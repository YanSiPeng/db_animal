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
 * @since 2022-04-02
 */
@Getter
@Setter
@ApiModel(value = "Sterilization对象", description = "")
public class Sterilization implements Serializable {

    private static final long serialVersionUID = 1L;

    @TableId(type = IdType.AUTO)
    @ApiModelProperty("id")
    private Integer id;

    @ApiModelProperty("流浪动物id")
    private Integer animalId;

    @ApiModelProperty("捕捉状态")
    private String catch1;
    private String animalName;

    @ApiModelProperty("绝育状态")
    private String sterilization;

    @ApiModelProperty("放生状态")
    private String release1;

    @ApiModelProperty("疫苗状态")
    private String vaccine;


}
