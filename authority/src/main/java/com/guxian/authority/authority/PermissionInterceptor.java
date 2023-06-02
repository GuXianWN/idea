package com.guxian.authority.authority;


import com.guxian.authority.authority.annotation.Permit;
import com.guxian.authority.authority.enumeration.Role;
import com.guxian.authority.exception.LoginException;
import com.guxian.authority.utils.JwtUtils;
import lombok.extern.slf4j.Slf4j;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.redis.core.RedisTemplate;
import org.springframework.data.redis.core.ValueOperations;
import org.springframework.stereotype.Component;
import org.springframework.web.method.HandlerMethod;
import org.springframework.web.servlet.HandlerInterceptor;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@Component
@Slf4j
public class PermissionInterceptor implements HandlerInterceptor {
    @Autowired
    private JwtUtils jwtUtils;
    @Autowired
    private RedisTemplate<String, Object> redisTemplate;

    @Override
    public boolean preHandle(HttpServletRequest request, HttpServletResponse response, Object handler) throws Exception {
        Permit annotation = ((HandlerMethod) handler).getMethodAnnotation(Permit.class);
        if (annotation == null) {
            return HandlerInterceptor.super.preHandle(request, response, handler);
        }
        Role trole = annotation.value();
        Integer id = jwtUtils.getUserIdByRequest(request);
        ValueOperations<String, Object> opsForValue = redisTemplate.opsForValue();
        Integer role = (Integer) opsForValue.get(id.toString());

        if (role == null) {
            throw new LoginException("请先重新登录", 401);
        } else if (role < trole.getPermission()) {
            throw new LoginException("您没有权限访问", 403);
        }
        return true;
    }
}
