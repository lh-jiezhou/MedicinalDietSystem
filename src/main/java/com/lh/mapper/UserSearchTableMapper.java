package com.lh.mapper;

import org.apache.ibatis.annotations.Param;

import java.util.List;

public interface UserSearchTableMapper {

    //显示搜索关键字(num指定个数)
    List<String> selectSearchTable(@Param("num") Integer num);
    //插入数据
    void insertSearchTable(@Param("userId") long userId, @Param("words") String words);
}
