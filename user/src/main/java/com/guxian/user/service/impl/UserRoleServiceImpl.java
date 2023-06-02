package com.guxian.user.service.impl;

import com.baomidou.mybatisplus.extension.service.impl.ServiceImpl;
import com.guxian.entity.UserRole;
import com.guxian.user.service.UserRoleService;
import com.guxian.user.mapper.UserRoleMapper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

/**
* @author GuXian
* @description 针对表【user_role】的数据库操作Service实现
* @createDate 2022-04-19 12:51:59
*/
@Service
public class UserRoleServiceImpl extends ServiceImpl<UserRoleMapper, UserRole>
    implements UserRoleService{
    @Autowired
    private UserRoleMapper userRoleMapper;

    UserRole getUserRoleByUserId(Integer userId) {
        return userRoleMapper.selectById(userId);
    }
}




