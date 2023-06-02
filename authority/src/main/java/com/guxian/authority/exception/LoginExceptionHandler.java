package com.guxian.authority.exception;

import com.guxian.entity.RespBean;
import org.springframework.web.bind.annotation.ExceptionHandler;
import org.springframework.web.bind.annotation.RestControllerAdvice;

@RestControllerAdvice
public class LoginExceptionHandler {
    /**
     * 处理自定义异常
     */
    @ExceptionHandler(LoginException.class)
    public RespBean handleException(LoginException e){
        return RespBean.error(e.getMsg()).setCode(e.getCode());
    }
}
