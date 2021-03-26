package com.lh.service.impl;

import com.lh.mapper.UserBrowseTableMapper;
import com.lh.pojo.MedicinalDietTable;
import com.lh.service.UserBrowseTableService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service("userBrowseTableService")
public class UserBrowseTableServiceImpl implements UserBrowseTableService {

    @Autowired
    private UserBrowseTableMapper userBrowseTableMapper;

    //查看(暂时仅仅记录浏览药膳，无浏览食材药材)
    @Override
    public List<MedicinalDietTable> selectBrowse(long userId) {
        List<MedicinalDietTable> medicinalDietTables = userBrowseTableMapper.selectBrowse(userId);
        return medicinalDietTables;
    }
    //插入
    @Override
    public boolean insertBrowse(long userId, long medId) {
        int row = userBrowseTableMapper.insertBrowse(userId, medId);
        return row == 1 ? true:false;
    }
}
