package com.guxian.entity;

import com.baomidou.mybatisplus.annotation.IdType;
import com.baomidou.mybatisplus.annotation.TableField;
import com.baomidou.mybatisplus.annotation.TableId;
import com.baomidou.mybatisplus.annotation.TableName;
import java.io.Serializable;
import lombok.Data;

/**
 * 
 * @TableName browse_idea
 */
@TableName(value ="browse_idea")
@Data
public class BrowseIdea implements Serializable {
    /**
     * id
     */
    @TableId(type = IdType.AUTO)
    private Integer id;

    /**
     * 用户id
     */
    private Integer uid;

    /**
     * 用户浏览的ideaId
     */
    private Integer ideaId;

    @TableField(exist = false)
    private static final long serialVersionUID = 1L;
}