package com.lh.service.impl;

import com.lh.mapper.UserSearchTableMapper;
import com.lh.service.UserSearchTableService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.ArrayList;
import java.util.List;

@Service("userSearchTableService")
public class UserSearchTableServiceImpl implements UserSearchTableService {

    @Autowired
    private UserSearchTableMapper userSearchTableMapper;

    @Override
    public List<String> selectSearchTable(Integer num) {
        List<String> searchs = new ArrayList<>();
        searchs = userSearchTableMapper.selectSearchTable(num);
        return searchs;
    }

    @Override
    public void insertSearchTable(long userId, String words) {
        userSearchTableMapper.insertSearchTable(userId, words);
    }
}
