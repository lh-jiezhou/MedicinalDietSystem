package com.lh.service;

import com.github.pagehelper.PageInfo;
import com.lh.pojo.MedicinalDietTable;
import com.lh.dto.MedicinalDietWithImage;

import java.util.List;

public interface MedicinalDietTableService {


    /**
     * 主界面搜索药膳（药膳名name|药膳组成constitute|应用efficacy|功效application|方解explain）
     * @param words
     * @return
     */
     PageInfo<MedicinalDietTable> selectMedicinalDietByWords(String words, PageInfo pageInfo);
    /**
     * 功效分类查看药膳
     * @param efficacyId
     * @return
     */
     PageInfo<MedicinalDietTable> selectMedicinalDietByEfficacy(long efficacyId, PageInfo pageInfo);

    /**
     * 应用分类查看药膳（病症）
     * @param applicationId
     * @return
     */
     PageInfo<MedicinalDietTable> selectMedicinalDietByApplication(long applicationId, PageInfo pageInfo);

    /**
     * （主页）通过专业分类查找，med_effi_cate
     * （主页）通过形态分类查找，med_shape_cate
     * （主页）通过制作分类查找，med_make_cate
     * @param effiCate,shapeCate,makeCate
     * @return
     */
    List<MedicinalDietTable> selectMedicinalDietByEffiCate(String effiCate);
    List<MedicinalDietTable> selectMedicinalDietByShapeCate(String shapeCate);
    List<MedicinalDietTable> selectMedicinalDietByMakeCate(String makeCate);

    /**
     * 显示药膳详情
     * @param medId
     * @return
     */
    MedicinalDietWithImage selectDetailOfMedicinalDiet(long medId);

    /**
     * 主页显示热门药膳
     * @param num
     * @return
     */
    List<MedicinalDietTable> selectMedicinalDietByClick(Integer num);

    /**
     * 根据体质推荐关键字搜索，num指定数量
     * @param key
     * @param num
     * @return
     */
    List<Integer> selectMedIdByRecommendKey(String key, Integer num);

    /**
     * 显示推荐，通过ID 找药膳
     * @param medId
     * @return
     */
    MedicinalDietTable selectMedById(long medId);


    /**
     * 更新点击量
     * @param medId
     */
    boolean updateMedClick(long medId);


    /**
     * 疾病分类查看药膳（病症）
     * @param diseaseId
     * @return
     */
    PageInfo<MedicinalDietTable> selectMedicinalDietByDisease(long diseaseId, PageInfo<MedicinalDietTable> pageInfo);
}
