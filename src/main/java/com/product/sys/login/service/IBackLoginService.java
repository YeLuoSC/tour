package com.product.sys.login.service;

import com.product.sys.user.po.UserPO;

public interface IBackLoginService {

	public UserPO getUserPO(String userName,String password);
}
