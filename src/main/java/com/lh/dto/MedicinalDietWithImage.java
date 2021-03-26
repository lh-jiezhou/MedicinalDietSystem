package com.lh.dto;

import com.lh.pojo.ImageTable;
import com.lh.pojo.MedicinalDietTable;

import java.util.List;

public class MedicinalDietWithImage extends MedicinalDietTable {
    private List<ImageTable> imageTables;

    public List<ImageTable> getImageTables() {
        return imageTables;
    }

    public void setImageTables(List<ImageTable> imageTables) {
        this.imageTables = imageTables;
    }
}
