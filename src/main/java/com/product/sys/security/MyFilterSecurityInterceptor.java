package com.product.sys.security;

import java.io.IOException;

import javax.servlet.Filter;
import javax.servlet.FilterChain;
import javax.servlet.FilterConfig;
import javax.servlet.ServletException;
import javax.servlet.ServletRequest;
import javax.servlet.ServletResponse;
import javax.servlet.http.HttpServletRequest;

import org.springframework.security.access.SecurityMetadataSource;
import org.springframework.security.access.intercept.AbstractSecurityInterceptor;
import org.springframework.security.access.intercept.InterceptorStatusToken;
import org.springframework.security.authentication.AuthenticationManager;
import org.springframework.security.web.FilterInvocation;
import org.springframework.security.web.access.intercept.FilterInvocationSecurityMetadataSource;
/** 
 * @description 一个自定义的filter， 
 *  必须包含authenticationManager,accessDecisionManager,securityMetadataSource三个属性， 
        我们的所有控制将在这三个类中实现 
 */ 
public class MyFilterSecurityInterceptor extends AbstractSecurityInterceptor implements Filter{

	 private FilterInvocationSecurityMetadataSource fisMetadataSource;  
     
	    

		/* (non-Javadoc) 
	     * @see org.springframework.security.access.intercept.AbstractSecurityInterceptor#getSecureObjectClass() 
	     */  
	    @Override  
	    public Class<?> getSecureObjectClass() {  
	        return FilterInvocation.class;  
	    }  
	  
	    @Override  
	    public SecurityMetadataSource obtainSecurityMetadataSource() {  
	        return fisMetadataSource;  
	    }  
	  
	    @Override  
	    public void destroy() {}  
	      
	    @Override  
	    public void doFilter(ServletRequest request, ServletResponse response,  
	            FilterChain chain) throws IOException, ServletException {  
	        //super.beforeInvocation(fi);源码    
	        //1.获取请求资源的权限    
	            //执行Collection<ConfigAttribute> attributes = SecurityMetadataSource.getAttributes(object);    
	        //2.是否拥有权限    
	            //this.accessDecisionManager.decide(authenticated, object, attributes);   
	    	AuthenticationManager authenticationManager1 = getAuthenticationManager();
	        System.out.println("------------MyFilterSecurityInterceptor.doFilter()-----------开始拦截器了....");  
	        String url = ((HttpServletRequest) request).getServletPath();
	        if(url.endsWith(".html")){
	        	return;
	        }
	        boolean isAjax = "XMLHttpRequest".equals(((HttpServletRequest) request).getHeader("X-Requested-With"));
	        System.out.println("判断是否为ajax?"+isAjax);
	        FilterInvocation fi = new FilterInvocation(request, response, chain); 
	        InterceptorStatusToken token = null;
	        if(!isAjax){
		        token = super.beforeInvocation(fi);  
	        }
	        try {  
	            fi.getChain().doFilter(fi.getRequest(), fi.getResponse());  
	        } catch (Exception e) {  
	            e.printStackTrace();  
	        }finally{
	        	if(token != null)
	        		super.afterInvocation(token,null);  
	        }  
	        
	        System.out.println("------------MyFilterSecurityInterceptor.doFilter()-----------拦截器该方法结束了....");  
	    }  
	   
	    @Override  
	    public void init(FilterConfig config) throws ServletException {  
	          
	    }  
	      
	      
	    public void setFisMetadataSource(  
	            FilterInvocationSecurityMetadataSource fisMetadataSource) {  
	        this.fisMetadataSource = fisMetadataSource;  
	    }  
	    public FilterInvocationSecurityMetadataSource getFisMetadataSource() {
			return fisMetadataSource;
		}

}
