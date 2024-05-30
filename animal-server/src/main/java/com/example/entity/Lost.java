package com.example.entity;

import java.io.Serializable;

import com.baomidou.mybatisplus.annotation.IdType;
import com.baomidou.mybatisplus.annotation.TableId;
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
@ApiModel(value = "Lost对象", description = "")
public class Lost implements Serializable {

    private static final long serialVersionUID = 1L;
@TableId(type = IdType.AUTO)
    @ApiModelProperty("id")
    private Integer id;

    @ApiModelProperty("走失宠物名字")
    private String nickname;

    @ApiModelProperty("种类")
    private String type;

    @ApiModelProperty("性别")
    private String sex;

    @ApiModelProperty("联系人")
    private String person;

    @ApiModelProperty("联系方式")
    private String phone;

    @ApiModelProperty("已丢失/带领回")
    private String status1;

    @ApiModelProperty("找回状态")
    private String status2;


}
