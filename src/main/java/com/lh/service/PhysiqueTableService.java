package com.lh.service;


public interface PhysiqueTableService {

    /**
     * 获得体质推荐关键字
     * @param physiqueId
     * @return
     */
    String selectPhysiqueKeyA(long physiqueId);
    String selectPhysiqueKeyB(long physiqueId);
    String selectPhysiqueKeyC(long physiqueId);
    String selectPhysiqueKeyD(long physiqueId);
}
