package com.example.service.impl;

import com.example.service.IApplcationService;
import com.example.entity.Applcation;
import com.example.mapper.ApplcationMapper;
import com.baomidou.mybatisplus.extension.service.impl.ServiceImpl;
import org.springframework.stereotype.Service;

/**
 * <p>
 *  服务实现类
 * </p>
 *
 * @author
 * @since 2022-04-02
 */
@Service
public class ApplcationServiceImpl extends ServiceImpl<ApplcationMapper, Applcation> implements IApplcationService {

}
