package com.example.entity;

import com.baomidou.mybatisplus.annotation.IdType;
import com.baomidou.mybatisplus.annotation.TableField;
import com.baomidou.mybatisplus.annotation.TableId;
import java.io.Serializable;
import java.util.List;

import io.swagger.annotations.ApiModel;
import io.swagger.annotations.ApiModelProperty;
import lombok.Getter;
import lombok.Setter;

/**
 * <p>
 *
 * </p>
 *
 * @author
 * @since 2022-03-19
 */
@Getter
@Setter
@ApiModel(value = "Comment对象", description = "")
public class Comment implements Serializable {

    private static final long serialVersionUID = 1L;

    @TableId(value = "id", type = IdType.AUTO)
    private Integer id;

    @ApiModelProperty("回复内容")
    private String content;

    @ApiModelProperty("回复人")
    private String user;

    @ApiModelProperty("回复时间")
    private String time;

    @ApiModelProperty("父id")
    private Integer pid;

    @ApiModelProperty("文章id")
    private Integer articleId;
    private Integer type;
    @TableField(exist = false)
    private String avatar;
    @TableField(exist = false)
    private List<Comment> children;

}
