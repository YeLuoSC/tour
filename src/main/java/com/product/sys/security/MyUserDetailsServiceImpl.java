package com.product.sys.security;

import java.util.Collection;
import java.util.HashSet;
import java.util.List;
import java.util.Set;

import javax.annotation.Resource;

import org.springframework.security.core.GrantedAuthority;
import org.springframework.security.core.authority.SimpleGrantedAuthority;
import org.springframework.security.core.userdetails.User;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.security.core.userdetails.UserDetailsService;
import org.springframework.security.core.userdetails.UsernameNotFoundException;
import org.springframework.stereotype.Component;

import com.product.sys.resource.dao.ResourceMapper;
import com.product.sys.resource.po.ResourcePO;
import com.product.sys.role.dao.RoleMapper;
import com.product.sys.role.po.RolePO;
import com.product.sys.user.dao.UserMapper;
import com.product.sys.user.po.UserPO;


public class MyUserDetailsServiceImpl implements UserDetailsService{

	@Resource
	private UserMapper userMapper;
	@Resource
	private RoleMapper roleMapper;
	@Resource
	private ResourceMapper resourceMapper;
	
	@Override
	public UserDetails loadUserByUsername(String userName) throws UsernameNotFoundException {
		System.out.println("username is " + userName);
        UserPO user = new UserPO();
        user.setUserName(userName);
        user = userMapper.selectOne(user);
        if(user == null) {  
            throw new UsernameNotFoundException(userName);  
        }  
        Collection<GrantedAuthority> grantedAuths = obtionGrantedAuthorities(user);
          System.out.println(user.getUserName());
        return new User(
                user.getUserName(),  
                user.getPassword(),   
                true, 
                true,
                true,
                true,
                grantedAuths);  
	}

	//取得用户的权限  
    private Set<GrantedAuthority> obtionGrantedAuthorities(UserPO user) {  
        Set<GrantedAuthority> authSet = new HashSet<GrantedAuthority>();  
        List<RolePO> roles = roleMapper.getRoleByUserName(user.getUserName());
          
        for(RolePO role : roles) {  
            List<ResourcePO> tempRes = resourceMapper.getResourceByRoleID(role.getRoleID());
            for(ResourcePO res : tempRes) {  
                authSet.add(new SimpleGrantedAuthority(res.getResourceName()));  
           }  
        }  
        return authSet;  
    }  
    
   
}
