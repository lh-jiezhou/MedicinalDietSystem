package com.lh.mapper;

import com.lh.pojo.MedicinalDietTable;
import org.apache.ibatis.annotations.Param;

import java.util.List;

public interface UserBrowseTableMapper {
    //查看
    List<MedicinalDietTable> selectBrowse(@Param("userId") long userId);
    //记录
    int insertBrowse(@Param("userId") long userId, @Param("medId") long medId);
}
