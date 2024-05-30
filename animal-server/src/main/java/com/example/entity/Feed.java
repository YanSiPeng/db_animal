package com.example.entity;

import com.baomidou.mybatisplus.annotation.IdType;
import com.baomidou.mybatisplus.annotation.TableId;
import java.io.Serializable;
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
 * @since 2022-04-04
 */
@Getter
@Setter
@ApiModel(value = "Feed对象", description = "")
public class Feed implements Serializable {

    private static final long serialVersionUID = 1L;

    @ApiModelProperty("id")
    @TableId(value = "id", type = IdType.AUTO)
    private Integer id;

    @ApiModelProperty("环境照片1")
    private String img;

    @ApiModelProperty("环境照片2")
    private String img2;

    @ApiModelProperty("环境照片3")
    private String img3;

    @ApiModelProperty("地址")
    private String address;

    @ApiModelProperty("相关描述")
    private String information;


}
