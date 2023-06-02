package com.guxian.authority.validator;

import com.baomidou.mybatisplus.core.toolkit.StringUtils;
import com.guxian.authority.exception.LoginException;

public abstract class Assert {

    public static void isBlank(String str, String message) {
        if (StringUtils.isBlank(str)) {
            throw new LoginException(message);
        }
    }

    public static void isNull(Object object, String message) {
        if (object == null) {
            throw new LoginException(message);
        }
    }
}