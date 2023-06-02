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
 * @TableName reward
 */
@TableName(value ="reward")
@Data
public class Reward implements Serializable {
    /**
     * 
     */
    @TableId(type = IdType.AUTO)
    private Integer id;

    /**
     * 
     */
    private Integer uid;

    /**
     * 描述
     */
    private String description;

    /**
     * 详细
     */
    private String detailed;

    /**
     * 悬赏的价格
     */
    private Integer price;

    /**
     * 被采纳的评论id
     */
    private Integer commentsId;

    /**
     * 创建时间
     */
    private Date createTime;

    @TableField(exist = false)
    private static final long serialVersionUID = 1L;
}