package com.lh.mapper;

import com.lh.pojo.MedicinalDietTable;
import org.apache.ibatis.annotations.Param;

import java.util.List;

public interface CollectionTableMapper {
    //查找
    List<MedicinalDietTable> selectCollectionByUserId(@Param("userId") long userId);
    //插入
    int insertCollection(@Param("userId") long userId, @Param("medId") long medId);
    //删除
    int deleteCollection(@Param("userId") long userId, @Param("medId") long medId);
}
