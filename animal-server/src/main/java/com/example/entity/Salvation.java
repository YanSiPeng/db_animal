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
@ApiModel(value = "Salvation对象", description = "")
public class Salvation implements Serializable {

    private static final long serialVersionUID = 1L;

    @TableId(value = "id", type = IdType.AUTO)
    private Integer id;

    @ApiModelProperty("情况描述")
    private String information;

    @ApiModelProperty("现场照片")
    private String img;

    @ApiModelProperty("地点")
    private String address;

    @ApiModelProperty("发现时间")
    private String time;

    @ApiModelProperty("联系人")
    private String person;

    @ApiModelProperty("联系方式")
    private String phone;

    @ApiModelProperty("解决状态")
    private String state;


}
