package com.guxian.entity;

import com.baomidou.mybatisplus.annotation.IdType;
import com.baomidou.mybatisplus.annotation.TableField;
import com.baomidou.mybatisplus.annotation.TableId;
import com.baomidou.mybatisplus.annotation.TableName;
import java.io.Serializable;
import java.time.LocalDateTime;
import java.util.Date;
import lombok.Data;
import lombok.experimental.Accessors;

/**
 * 
 * @TableName idea
 */
@TableName(value ="idea")
@Data
@Accessors(chain = true)
public class Idea implements Serializable {
    /**
     * id
     */
    @TableId(type = IdType.AUTO)
    private Integer id;

    /**
     * 用户的id
     */
    private String userId;

    /**
     * 标题
     */
    private String detailed;

    /**
     * 点赞量
     */
    private Integer like;

    /**
     * 访问量
     */
    private Integer traffic;

    /**
     * 创建时间
     */
    private LocalDateTime createTime;

    /**
     * 点踩
     */
    private Integer dislike;

    /**
     * 详情
     */
    private String description;

    /**
     * 收藏 0收藏/1未收藏
     */
    private Integer cid;

    /**
     * 分类 0首页/1科技/2杂谈/3文学
     */
    private Integer category;

    @TableField(exist = false)
    private static final long serialVersionUID = 1L;
}