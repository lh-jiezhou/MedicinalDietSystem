package com.lh.mapper;

import com.lh.pojo.ApplicationCateTable;
import org.apache.ibatis.annotations.Param;

import java.util.List;

public interface ApplicationCateTableMapper {

    //显示应用类别
    List<ApplicationCateTable> selectAllApplicationCateTable();
    //通过id搜名字（暂时）
    String selectNameById(@Param("applicationId") long applicationId);

}
