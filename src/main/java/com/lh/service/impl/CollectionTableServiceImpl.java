package com.lh.service.impl;

import com.lh.mapper.CollectionTableMapper;
import com.lh.pojo.MedicinalDietTable;
import com.lh.service.CollectionTableService;
import org.apache.ibatis.annotations.Param;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service("collectionTableService")
public class CollectionTableServiceImpl implements CollectionTableService {

    @Autowired
    private CollectionTableMapper collectionTableMapper;

    //查找收藏
    @Override
    public List<MedicinalDietTable> selectCollectionByUserId(long userId) {
        List<MedicinalDietTable> medicinalDietTables = collectionTableMapper.selectCollectionByUserId(userId);
        return medicinalDietTables;
    }

    //添加收藏
    @Override
    public boolean insertCollection(long userId, long medId) {
        int row = collectionTableMapper.insertCollection(userId, medId);
        return row == 1 ? true:false;
    }

    //取消收藏
    @Override
    public boolean deleteCollection(long userId, long medId) {
        int row = collectionTableMapper.deleteCollection(userId, medId);
        return row == 1 ? true:false;
    }
}
