package com.product.sys.security;

import java.util.Collection;
import java.util.Iterator;

import org.springframework.security.access.AccessDecisionManager;
import org.springframework.security.access.AccessDeniedException;
import org.springframework.security.access.ConfigAttribute;
import org.springframework.security.authentication.InsufficientAuthenticationException;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.GrantedAuthority;
import org.springframework.stereotype.Component;
/** 
 * @description  ���ʾ�����������ĳ���û����еĽ�ɫ���Ƿ����㹻��Ȩ��ȥ����ĳ����Դ ;�����յķ��ʿ��ƾ��� 
 * @date 2012-8-16 
 */ 
public class MyAccessDescisionManager implements AccessDecisionManager{

	@Override
	public void decide(Authentication authentication, Object object,
			Collection<ConfigAttribute> configAttributes)
			throws AccessDeniedException, InsufficientAuthenticationException {
		// TODO Auto-generated method stub
		 System.out.println("MyAccessDescisionManager.decide()------------------��֤�û��Ƿ����һ����Ȩ��--------");  
	        if(configAttributes==null) return;  
	        Iterator<ConfigAttribute> it = configAttributes.iterator();  
	        while(it.hasNext()){  
	            String needRole = it.next().getAttribute();  
	            //authentication.getAuthorities()  �û����е�Ȩ��  
	            for(GrantedAuthority ga:authentication.getAuthorities()){  
	                if(needRole.equals(ga.getAuthority())){  
	                    return;  
	                }  
	            }  
	        }  
	        throw new AccessDeniedException("--------MyAccessDescisionManager��decide-------Ȩ����֤ʧ�ܣ�");  
		
	}

	@Override
	public boolean supports(ConfigAttribute attribute) {
		// TODO Auto-generated method stub
		return true;
	}

	@Override
	public boolean supports(Class<?> clazz) {
		// TODO Auto-generated method stub
		return true;
	}

}
