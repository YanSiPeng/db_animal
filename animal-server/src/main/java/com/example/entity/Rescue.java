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
@ApiModel(value = "Rescue对象", description = "")
public class Rescue implements Serializable {

    private static final long serialVersionUID = 1L;

    @ApiModelProperty("id")
    @TableId(value = "id", type = IdType.AUTO)
    private Integer id;

    @ApiModelProperty("名称")
    private String name;

    @ApiModelProperty("地址")
    private String addres;

    @ApiModelProperty("照片")
    private String img;

    @ApiModelProperty("联系人")
    private String person;

    @ApiModelProperty("联系方式")
    private String phone;

    @ApiModelProperty("相关描述")
    private String information;


}
