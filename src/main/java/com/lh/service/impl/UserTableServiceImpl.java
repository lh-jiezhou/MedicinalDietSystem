package com.lh.service.impl;

import com.lh.mapper.UserTableMapper;
import com.lh.pojo.UserTable;
import com.lh.dto.UserWithLoginDTO;
import com.lh.service.UserTableService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service("userTableService")
public class UserTableServiceImpl implements UserTableService {

    @Autowired
    private UserTableMapper userTableMapper;

    //登录模块
    @Override
    public UserTable selectUserWithLogin(UserWithLoginDTO userWithLoginDTO) {
        UserTable user = userTableMapper.selectUserWithLogin(userWithLoginDTO);
        return user;
    }

    //注册模块 仅插入账号和密码
    @Override
    public boolean insertUserTableBase(UserWithLoginDTO userWithLoginDTO) {
        //insert返回行数
        int row = userTableMapper.insertUserTableBase(userWithLoginDTO);
        return row == 1 ? true:false;
    }

    //完善个人信息模块 更新用户表
    @Override
    public boolean updateUserTableByUser(UserTable userTable) {
        int row = userTableMapper.updateUserTableByUser(userTable);
        return row == 1 ? true:false;
    }

    //显示用户全部信息
    @Override
    public UserTable selectUser(long userId) {
        UserTable user = userTableMapper.selectUser(userId);
        return user;
    }

}
