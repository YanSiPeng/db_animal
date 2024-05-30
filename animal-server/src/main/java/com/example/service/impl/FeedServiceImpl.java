package com.example.service.impl;

import com.example.service.IFeedService;
import com.example.entity.Feed;
import com.example.mapper.FeedMapper;
import com.baomidou.mybatisplus.extension.service.impl.ServiceImpl;
import org.springframework.stereotype.Service;

/**
 * <p>
 *  服务实现类
 * </p>
 *
 * @author
 * @since 2022-04-04
 */
@Service
public class FeedServiceImpl extends ServiceImpl<FeedMapper, Feed> implements IFeedService {

}
