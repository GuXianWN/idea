package com.guxian.user.service;

import com.baomidou.mybatisplus.extension.service.IService;
import com.guxian.entity.User;

import java.util.Map;

/**
* @author GuXian
* @description 针对表【user】的数据库操作Service
* @createDate 2022-04-15 08:33:21
*/
public interface UserService extends IService<User> {

    Integer login(String username, String password);

    Integer getRoleByUserId(Integer userId);

    User getUser(Integer userIdByRequest);

    void logout(Integer userIdByRequest);
}
