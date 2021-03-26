package com.lh.dto;

import com.lh.pojo.TestQuestionTable;
import com.lh.pojo.TestTable;

import java.util.List;

public class TestWithQuestionDTO extends TestTable {
    private List<TestQuestionTable> testQuestionTables;

    public List<TestQuestionTable> getTestQuestionTables() {
        return testQuestionTables;
    }

    public void setTestQuestionTables(List<TestQuestionTable> testQuestionTables) {
        this.testQuestionTables = testQuestionTables;
    }
}
