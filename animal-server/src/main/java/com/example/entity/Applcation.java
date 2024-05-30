package com.example.entity;

import com.baomidou.mybatisplus.annotation.IdType;
import com.baomidou.mybatisplus.annotation.TableField;
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
 * @since 2022-04-02
 */
@Getter
@Setter
@ApiModel(value = "Applcation对象", description = "")
public class Applcation implements Serializable {

    private static final long serialVersionUID = 1L;

    @ApiModelProperty("id")
    @TableId(value = "id", type = IdType.AUTO)
    private Integer id;

    @ApiModelProperty("姓名")
    private String name;

    @ApiModelProperty("性别")
    private String sex;

    @ApiModelProperty("年龄")
    private Integer age;

    @ApiModelProperty("养宠经验")
    private String experience;

    @ApiModelProperty("宠物")
    private String pet;

    @ApiModelProperty("联系方式")
    private String phone;

    @ApiModelProperty("婚姻")
    private String married;

    @ApiModelProperty("收入")
    private String income;

    @ApiModelProperty("职业")
    private String profession;

    @ApiModelProperty("住址")
    private String address;

    @ApiModelProperty("领养理由")
    private String reason;

    @ApiModelProperty("状态")
    private String state;

    @ApiModelProperty("动物id")
    private Integer animalId;
    private Integer userId;
    @TableField(exist = false)
    private Animal animal;


}
