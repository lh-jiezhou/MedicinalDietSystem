package com.lh.service.impl;

import com.lh.mapper.ApplicationCateTableMapper;
import com.lh.pojo.ApplicationCateTable;
import com.lh.service.ApplicationCateTableService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service("applicationCateTableService")
public class ApplicationCateTableServiceImpl implements ApplicationCateTableService {
    @Autowired
    private ApplicationCateTableMapper applicationCateTableMapper;

    @Override
    public List<ApplicationCateTable> selectAllApplicationCate() {
        List<ApplicationCateTable> applicationCateTables = applicationCateTableMapper.selectAllApplicationCateTable();
        return applicationCateTables;
    }

    @Override
    public String selectNameById(long applicationId) {
        String applicationName = applicationCateTableMapper.selectNameById(applicationId);
        return applicationName;
    }
}
