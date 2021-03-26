package com.lh.mapper;

import com.lh.pojo.AdminMedTable;
import com.lh.pojo.MedicinalDietTable;
import com.lh.pojo.ImageTable;
import org.apache.ibatis.annotations.Param;

import java.util.*;

public interface AdminMedTableMapper {

    AdminMedTable selectAdminMedInfoById(String adminMedId);

    MedicinalDietTable selectMedicinalDietInfoById(int id);

    List<Map<String,Object>> selectCountEffi();

    List<Map<String,Object>> selectCountShape();

    int insertMedicinalDietInfo(MedicinalDietTable medicinalDietTable);

    int updateMedicinalDietInfo(MedicinalDietTable medicinalDietTable);

    List<MedicinalDietTable> selectMedicinalTableInfo(@Param("condition") String condition);

    List<MedicinalDietTable> selectMedicinalTablePageInfo(@Param("pageF") int pageF, @Param("pageB") int pageB, @Param("condition") String condition);

    int deleteMedicinalTableInfo(int id);

    List<ImageTable> selectMedicinalImage(int id);

    int selectImageMaxSequence(int id);

    int insertImageInfo(ImageTable imageTable);

    int deleteImageInfo(int id);
}
