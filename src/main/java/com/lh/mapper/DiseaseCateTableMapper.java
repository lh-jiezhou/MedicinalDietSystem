package com.lh.mapper;

import com.lh.pojo.DiseaseCateTable;
import org.apache.ibatis.annotations.Param;

import java.util.List;

public interface DiseaseCateTableMapper {
    //显示疾病类别
    List<DiseaseCateTable> selectAllDiseaseCateTable();
    //通过id搜病症（暂时）
    DiseaseCateTable selectDiseaseCateById(@Param("diseaseId") long diseaseId);
}
