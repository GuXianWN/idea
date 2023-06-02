package com.guxian.entity;

import com.baomidou.mybatisplus.annotation.IdType;
import com.baomidou.mybatisplus.annotation.TableField;
import com.baomidou.mybatisplus.annotation.TableId;
import com.baomidou.mybatisplus.annotation.TableName;
import java.io.Serializable;
import lombok.Data;

/**
 * 
 * @TableName like_comments
 */
@TableName(value ="like_comments")
@Data
public class LikeComments implements Serializable {
    /**
     * id
     */
    @TableId(type = IdType.AUTO)
    private Integer id;

    /**
     * 用户id
     */
    private String uid;

    /**
     * 评论id
     */
    private Integer commentsId;

    @TableField(exist = false)
    private static final long serialVersionUID = 1L;
}