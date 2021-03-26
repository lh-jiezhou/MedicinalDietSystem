package com.lh.service;

import com.lh.pojo.UserTable;
import com.lh.dto.UserWithLoginDTO;

public interface UserTableService {

    /**
     * 登录 验证用户
     * @param userWithLoginDTO
     * @return
     */
    UserTable selectUserWithLogin(UserWithLoginDTO userWithLoginDTO);

    /**
     * 注册模块 仅插入账号和密码
     * @param userWithLoginDTO
     * @return
     */
    boolean insertUserTableBase(UserWithLoginDTO userWithLoginDTO);

    /**
     * 完善个人信息模块 更新用户表
     * @param userTable
     * @return
     */
    boolean updateUserTableByUser(UserTable userTable);


    /**
     * 显示User全部信息
     * @param userId
     * @return
     */
    UserTable selectUser(long userId);

}
