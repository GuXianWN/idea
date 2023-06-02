package com.guxian.comments;

import com.guxian.authority.authority.PermissionInterceptor;
import org.mybatis.spring.annotation.MapperScan;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.web.servlet.config.annotation.InterceptorRegistry;
import org.springframework.web.servlet.config.annotation.WebMvcConfigurer;

@SpringBootApplication(scanBasePackages = {"com.guxian.comments","com.guxian.authority"})
@MapperScan("com.guxian.comments.mapper")
public class CommentsApplication implements WebMvcConfigurer {
    @Autowired
    private PermissionInterceptor permissionInterceptor;

    public static void main(String[] args) {

        SpringApplication.run(CommentsApplication.class, args);
    }

    @Override
    public void addInterceptors(InterceptorRegistry registry) {
        registry.addInterceptor(permissionInterceptor).addPathPatterns("/**");
    }
}
