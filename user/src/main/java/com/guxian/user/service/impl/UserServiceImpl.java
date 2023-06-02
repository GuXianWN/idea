package com.guxian.user.service.impl;

import com.baomidou.mybatisplus.core.conditions.query.QueryWrapper;
import com.baomidou.mybatisplus.extension.service.impl.ServiceImpl;
import com.guxian.authority.exception.LoginException;
import com.guxian.entity.User;
import com.guxian.entity.UserRole;
import com.guxian.user.mapper.UserMapper;
import com.guxian.user.service.UserService;
import com.guxian.authority.validator.Assert;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.redis.core.RedisTemplate;
import org.springframework.data.redis.core.ValueOperations;
import org.springframework.security.crypto.password.PasswordEncoder;
import org.springframework.stereotype.Service;

/**
 * @author GuXian
 * @description 针对表【user】的数据库操作Service实现
 * @createDate 2022-04-15 08:33:21
 */
@Service
public class UserServiceImpl extends ServiceImpl<UserMapper, User>
        implements UserService {
    @Autowired
    private UserMapper userMapper;
    @Autowired
    private PasswordEncoder passwordEncoder;
    @Autowired
    private RedisTemplate<String, Object> redisTemplate;
    @Autowired
    private UserRoleServiceImpl roleService;

    @Override
    public Integer login(String username, String password) {
        User user = userMapper.selectOne(new QueryWrapper<User>().eq("user_id", username));

        Assert.isNull(user, "账号不存在");

        if (!passwordEncoder.matches(password, user.getPassword())) {
            throw new LoginException("账号或密码错误");
        }

        UserRole role = roleService.getUserRoleByUserId(user.getId());
        ValueOperations<String, Object> valueOperations = redisTemplate.opsForValue();
        valueOperations.set(user.getId().toString(), role.getRole());
        return user.getId();
    }

    @Override
    public Integer getRoleByUserId(Integer userId) {
        return null;
    }

    @Override
    public User getUser(Integer userId) {
        User user = userMapper.selectById(userId);
        user.setPassword(null);
        return user;
    }

    @Override
    public void logout(Integer userIdByRequest) {
        redisTemplate.delete(userIdByRequest.toString());
    }
}




