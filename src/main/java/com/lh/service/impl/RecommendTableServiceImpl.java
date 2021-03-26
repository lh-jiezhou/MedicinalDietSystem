package com.lh.service.impl;

import com.lh.mapper.RecommendTableMapper;
import com.lh.service.RecommendTableService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service("recommendTableService")
public class RecommendTableServiceImpl implements RecommendTableService {

    @Autowired
    private RecommendTableMapper recommendTableMapper;

    //插入
    @Override
    public boolean insertRecommend(long userId, long medId, long recommendBase) {
        int row = recommendTableMapper.insertRecommend(userId, medId, recommendBase);
        return row == 1 ? true:false;
    }

    //查找
    @Override
    public List<Integer> selectRecommendMedId(long userId, long recommendBase) {
        List<Integer> medIdList = recommendTableMapper.selectRecommendMedId(userId, recommendBase);
        return medIdList;
    }
}
