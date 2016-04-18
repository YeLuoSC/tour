package com.product.sys.security;

import java.util.ArrayList;
import java.util.Collection;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Set;

import javax.annotation.Resource;

import org.springframework.security.access.ConfigAttribute;
import org.springframework.security.access.SecurityConfig;
import org.springframework.security.web.FilterInvocation;
import org.springframework.security.web.access.intercept.FilterInvocationSecurityMetadataSource;
import org.springframework.stereotype.Component;
import org.springframework.util.AntPathMatcher;

import com.product.sys.resource.dao.ResourceMapper;
import com.product.sys.resource.po.ResourcePO;
import com.product.sys.role.dao.RoleMapper;
import com.product.sys.role.po.RolePO;
import com.product.sys.user.dao.UserMapper;

/** 
 * @description  ��ԴԴ���ݶ��壬�����е���Դ��Ȩ�޶�Ӧ��ϵ����������������ĳһ��Դ���Ա���Щ��ɫ���� 
 * @author aokunsang 
 * @date 2012-8-15 
 */  
public class MySecurityMetadataSource implements FilterInvocationSecurityMetadataSource {  

	private ResourceMapper resourceMapper;
	
	private RoleMapper roleMapper;


	/* ������Դ��Ȩ�޵Ķ�Ӧ��ϵ  key-��Դurl  value-Ȩ�� */  
    private static Map<String,Collection<ConfigAttribute>> resourceMap = null;   
    private AntPathMatcher urlMatcher = new AntPathMatcher();  
      
    public MySecurityMetadataSource(ResourceMapper resourceMapper,RoleMapper roleMapper) {  
        this.resourceMapper = resourceMapper;  
        this.roleMapper = roleMapper;
        loadResourcesDefine();  
    }  
      
    @Override  
    public Collection<ConfigAttribute> getAllConfigAttributes() {  
        return null;  
    }  
  
    private void loadResourcesDefine(){  
        resourceMap = new HashMap<String,Collection<ConfigAttribute>>();  
//      Collection<ConfigAttribute> configAttributes1 = new ArrayList<ConfigAttribute>() ;  
//      ConfigAttribute configAttribute1 = new SecurityConfig("ROLE_ADMIN");  
//      configAttributes1.add(configAttribute1);  
//      resourceMap.put("/leftmenu.action", configAttributes1);  
          
        System.out.println("MySecurityMetadataSource.loadResourcesDefine()--------------��ʼ������Դ�б�����--------");  
        List<RolePO> roles = roleMapper.selectAll();  
        for(RolePO role : roles){  
            List<ResourcePO> resources = resourceMapper.getResourceByRoleID(role.getRoleID());
            for(ResourcePO resource : resources){  
                Collection<ConfigAttribute> configAttributes = null;  
                ConfigAttribute configAttribute = new SecurityConfig(resource.getResourceName());  
                if(resourceMap.containsKey(resource.getUrl())){  
                    configAttributes = resourceMap.get(resource.getUrl());  
                    configAttributes.add(configAttribute);  
                }else{  
                    configAttributes = new ArrayList<ConfigAttribute>() ;  
                    configAttributes.add(configAttribute);  
                    resourceMap.put(resource.getUrl(), configAttributes);  
                }  
            }  
        }
        System.out.println("11");
        Set<String> set = resourceMap.keySet();
        Iterator<String> it = set.iterator();
        while(it.hasNext()){
        	String s = it.next();
        	System.out.println("key:"+s+"|value:"+resourceMap.get(s));
        }
    }  
    /*  
     * �����������Դ��ַ����ȡ����ӵ�е�Ȩ�� 
     */  
    @Override  
    public Collection<ConfigAttribute> getAttributes(Object obj)  
            throws IllegalArgumentException {  
        //��ȡ�����url��ַ  
        String url = ((FilterInvocation)obj).getRequestUrl();  
        System.out.println("MySecurityMetadataSource:getAttributes()---------------�����ַΪ��"+url);  
        Iterator<String> it = resourceMap.keySet().iterator();  
        while(it.hasNext()){  
            String _url = it.next();  
            if(_url.indexOf("?")!=-1){  
                _url = _url.substring(0, _url.indexOf("?"));  
            }  
            if(urlMatcher.match(_url,url)){
            	System.out.println("MySecurityMetadataSource:getAttributes()---------------��Ҫ��Ȩ���ǣ�"+resourceMap.get(_url));  
                return resourceMap.get(_url);  
            }
            	
        }
        Collection<ConfigAttribute> nouse = new ArrayList<ConfigAttribute>();
        nouse.add(new SecurityConfig("����ӦȨ��"));
        return nouse;
    }  
  
    @Override  
    public boolean supports(Class<?> arg0) {  
        System.out.println("MySecurityMetadataSource.supports()---------------------");  
        return true;  
    }  
      
}  