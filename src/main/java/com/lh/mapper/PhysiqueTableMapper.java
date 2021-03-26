package com.lh.mapper;


public interface PhysiqueTableMapper {
    //查找推荐关键字
    String selectPhysiqueKeyA(long physiqueId);
    String selectPhysiqueKeyB(long physiqueId);
    String selectPhysiqueKeyC(long physiqueId);
    String selectPhysiqueKeyD(long physiqueId);


}
