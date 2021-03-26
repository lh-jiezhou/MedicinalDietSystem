package com.lh.mapper;

import com.lh.pojo.UserTable;
import com.lh.dto.UserWithLoginDTO;

public interface UserTableMapper {

    //登录
    UserTable selectUserWithLogin(UserWithLoginDTO userWithLoginDTO);
    //注册 insert返回行数
    int insertUserTableBase(UserWithLoginDTO userWithLoginDTO);
    //完善个人信息(基本信息)
    int updateUserTableByUser(UserTable userTable);
    //显示个人全部信息
    UserTable selectUser(long userId);
}
