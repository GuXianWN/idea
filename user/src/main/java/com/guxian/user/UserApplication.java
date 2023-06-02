package com.guxian.user;

import com.guxian.authority.authority.PermissionInterceptor;
import org.mybatis.spring.annotation.MapperScan;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.web.servlet.config.annotation.InterceptorRegistry;
import org.springframework.web.servlet.config.annotation.WebMvcConfigurer;

@MapperScan("com.guxian.user.mapper")
@SpringBootApplication(scanBasePackages = {"com.guxian.authority", "com.guxian.user"})
public class UserApplication implements WebMvcConfigurer {

    @Autowired
    private PermissionInterceptor permissionInterceptor;

    public static void main(String[] args) {
        SpringApplication.run(UserApplication.class, args);
    }

    @Override
    public void addInterceptors(InterceptorRegistry registry) {
        registry.addInterceptor(permissionInterceptor).addPathPatterns("/**");
    }
}

