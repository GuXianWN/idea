package com.guxian;

import com.guxian.authority.authority.PermissionInterceptor;
import org.mybatis.spring.annotation.MapperScan;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.web.servlet.config.annotation.InterceptorRegistry;
import org.springframework.web.servlet.config.annotation.WebMvcConfigurer;

@SpringBootApplication
@MapperScan("com.guxian.idea.mapper")
public class IdeApplication implements WebMvcConfigurer {
//    @Autowired
//    private PermissionInterceptor permissionInterceptor;

    public static void main(String[] args) {
        SpringApplication.run(IdeApplication.class, args);
    }

//    @Override
//    public void addInterceptors(InterceptorRegistry registry) {
//        registry.addInterceptor(permissionInterceptor).addPathPatterns("/**");
//    }
}
