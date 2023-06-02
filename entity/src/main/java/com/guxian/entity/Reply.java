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
 * @TableName reply
 */
@TableName(value ="reply")
@Data
public class Reply implements Serializable {
    /**
     * 
     */
    @TableId(type = IdType.AUTO)
    private Integer id;

    /**
     * 评论的id
     */
    private Integer commentsId;

    /**
     * 回复给哪个用户
     */
    private Integer toUid;

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

    @TableField(exist = false)
    private static final long serialVersionUID = 1L;
}