package com.guxian.entity;

import com.baomidou.mybatisplus.annotation.IdType;
import com.baomidou.mybatisplus.annotation.TableField;
import com.baomidou.mybatisplus.annotation.TableId;
import com.baomidou.mybatisplus.annotation.TableName;
import java.io.Serializable;

import lombok.AllArgsConstructor;
import lombok.Data;

/**
 * 
 * @TableName user_role
 */
@TableName(value ="user_role")
@Data
@AllArgsConstructor
public class UserRole implements Serializable {
    /**
     * 
     */
    @TableId
    private Integer userId;

    /**
     * 
     */
    private Integer role;

    @TableField(exist = false)
    private static final long serialVersionUID = 1L;
}