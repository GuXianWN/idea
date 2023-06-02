package com.guxian.entity;

import com.baomidou.mybatisplus.annotation.IdType;
import com.baomidou.mybatisplus.annotation.TableField;
import com.baomidou.mybatisplus.annotation.TableId;
import com.baomidou.mybatisplus.annotation.TableName;
import java.io.Serializable;
import lombok.Data;

/**
 * 
 * @TableName collection_idea
 */
@TableName(value ="collection_idea")
@Data
public class CollectionIdea implements Serializable {
    /**
     * 
     */
    @TableId(type = IdType.AUTO)
    private Integer cid;

    /**
     * 
     */
    private Integer uid;

    /**
     * 
     */
    private Integer ideaId;

    @TableField(exist = false)
    private static final long serialVersionUID = 1L;
}