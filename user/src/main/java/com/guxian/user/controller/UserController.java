package com.guxian.user.controller;

import com.guxian.authority.authority.annotation.Permit;
import com.guxian.authority.authority.enumeration.Role;
import com.guxian.authority.utils.JwtUtils;
import com.guxian.entity.RespBean;
import com.guxian.entity.User;
import com.guxian.entity.UserRole;
import com.guxian.request.LoginForm;
import com.guxian.user.form.RegisterForm;
import com.guxian.user.service.UserService;
import com.guxian.user.service.impl.UserRoleServiceImpl;
import lombok.Setter;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.cloud.context.config.annotation.RefreshScope;
import org.springframework.security.crypto.password.PasswordEncoder;
import org.springframework.validation.annotation.Validated;
import org.springframework.web.bind.annotation.*;

import javax.servlet.http.HttpServletRequest;
import java.time.LocalDateTime;
import java.util.Date;
import java.util.HashMap;
import java.util.Map;


@RequestMapping("/user")
@RestController
@RefreshScope
@Setter(onMethod_ = @Autowired)
public class UserController {
    private JwtUtils jwtUtils;
    private UserService userService;
    private UserRoleServiceImpl userRoleService;

    @Permit(Role.ADMIN)
    @GetMapping("/demo")
    public Integer demo(HttpServletRequest request) {
        return jwtUtils.getUserIdByRequest(request);
    }

    @Permit(Role.SUPERADMIN)
    @GetMapping("/demo2")
    public Integer demo2(HttpServletRequest request) {
        return jwtUtils.getUserIdByRequest(request);
    }

    @PostMapping("/login")
    public RespBean login(@RequestBody LoginForm loginForm) {
        //用户登录
        Integer userId = userService.login(loginForm.getUsername(), loginForm.getPassword());
        if (userId == null) {
            return RespBean.error("用户名或密码错误");
        } else {
            //生成token
            String token = jwtUtils.generateToken(userId);

            Map<String, Object> map = new HashMap<>();
            map.put("token", token);
            map.put("expire", jwtUtils.getExpire());
            return RespBean.success("登录成功").setData(map);
        }
    }

    @Permit(Role.USER)
    @GetMapping("/logout")
    public RespBean logout(HttpServletRequest request) {
        //用户退出
        userService.logout(jwtUtils.getUserIdByRequest(request));
        return RespBean.success("退出成功");
    }

    @Permit(Role.USER)
    @GetMapping("")
    public RespBean getUser(HttpServletRequest request) {
        return RespBean.success("获取用户信息成功").data("user", userService.getUser(jwtUtils.getUserIdByRequest(request)));
    }

    @Autowired
    private PasswordEncoder passwordEncoder;

    @PostMapping("/register")
    public RespBean register(@RequestBody @Validated RegisterForm registerForm) {
        //用户注册
        User user = new User();
        user.setUsername(registerForm.getUsername());
        user.setPassword(passwordEncoder.encode(registerForm.getPassword()));
        user.setUserId(registerForm.getUser_id());
        user.setBalance(0);
        user.setCreateTime(LocalDateTime.now());

        boolean i = false;
        try {
            i = userService.save(user);
            if (i) {
                userRoleService.save(new UserRole(user.getId(), Role.USER.getPermission()));
                return RespBean.success("注册成功");
            } else {
                return RespBean.error("账号已存在");
            }
        } catch (Exception e) {
            return RespBean.error("账号已存在");
        }
    }
}
