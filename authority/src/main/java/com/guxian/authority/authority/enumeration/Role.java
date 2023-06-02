package com.guxian.authority.authority.enumeration;

import lombok.Getter;

@Getter
public enum Role {
    SUPERADMIN(6),
    ADMIN(5),
    USER(1);
    final int permission;

    Role(int permission) {
        this.permission = permission;
    }
}
