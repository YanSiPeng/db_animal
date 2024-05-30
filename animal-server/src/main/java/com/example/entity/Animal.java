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
 * @since 2022-04-02
 */
@Getter
@Setter
@ApiModel(value = "Animal对象", description = "")
public class Animal implements Serializable {

    private static final long serialVersionUID = 1L;

    @ApiModelProperty("id")
    @TableId(value = "id", type = IdType.AUTO)
    private Integer id;

    @ApiModelProperty("动物名字")
    private String nickname;

    @ApiModelProperty("动物性别")
    private String sex;

    @ApiModelProperty("种类")
    private String type;

    @ApiModelProperty("年龄")
    private String age;

    @ApiModelProperty("动物照片")
    private String img;

    @ApiModelProperty("活动范围")
    private String address;

    @ApiModelProperty("身体状态")
    private String status;

    @ApiModelProperty("是否绝育")
    private String sterilization;

    @ApiModelProperty("疫苗接种")
    private String vaccine;

    @ApiModelProperty("领养状态")
    private String adopt;

    @ApiModelProperty("其他描述")
    private String information;
    private String isAdopt;
    private Integer praise;


}
