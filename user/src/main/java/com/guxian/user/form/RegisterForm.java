package com.guxian.user.form;

import lombok.Data;

import javax.validation.constraints.NotBlank;

@Data
public class RegisterForm {
    @NotBlank(message = "用户名不能为空")
    private String username;
    @NotBlank(message = "密码不能为空")
    private String password;
    @NotBlank(message = "账号不能为空")
    private String user_id;
}
