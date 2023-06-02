package com.guxian.entity;

import com.baomidou.mybatisplus.annotation.IdType;
import com.baomidou.mybatisplus.annotation.TableField;
import com.baomidou.mybatisplus.annotation.TableId;
import com.baomidou.mybatisplus.annotation.TableName;
import java.io.Serializable;
import java.util.Date;
import lombok.Data;

/**
 * 
 * @TableName comments
 */
@TableName(value ="comments")
@Data
public class Comments implements Serializable {
    /**
     * id
     */
    @TableId(type = IdType.AUTO)
    private Integer id;

    /**
     * 回复帖子的id
     */
    private Integer ideaId;

    /**
     * 悬赏id
     */
    private Integer replyId;

    /**
     * 评论内容
     */
    private String content;

    /**
     * 创建时间
     */
    private Date createTime;

    /**
     * 点赞数
     */
    private Integer like;

    /**
     * 点踩数
     */
    private Integer unlike;

    /**
     * 用户id
     */
    private String uid;

    @TableField(exist = false)
    private static final long serialVersionUID = 1L;
}