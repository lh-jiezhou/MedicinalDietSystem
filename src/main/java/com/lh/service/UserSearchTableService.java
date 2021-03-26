package com.lh.service;

import java.util.List;

public interface UserSearchTableService {
    /**
     * 显示搜索关键字(num指定个数)
     * @param num
     * @return
     */
    List<String> selectSearchTable(Integer num);

    /**
     * 插入数据
     * @param userId
     * @param words
     */
    void insertSearchTable(long userId, String words);
}
