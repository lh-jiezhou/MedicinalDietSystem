package com.lh.service.impl;

import com.lh.mapper.PhysiqueTableMapper;
import com.lh.service.PhysiqueTableService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;


@Service("physiqueTableService")
public class PhysiqueTableServiceImpl implements PhysiqueTableService {

    @Autowired
    private PhysiqueTableMapper physiqueTableMapper;

    //返回keyA
    @Override
    public String selectPhysiqueKeyA(long physiqueId) {
        String keyA = physiqueTableMapper.selectPhysiqueKeyA(physiqueId);
        return keyA;
    }
    @Override
    public String selectPhysiqueKeyB(long physiqueId) {
        String keyB = physiqueTableMapper.selectPhysiqueKeyB(physiqueId);
        return keyB;
    }
    @Override
    public String selectPhysiqueKeyC(long physiqueId) {
        String keyC = physiqueTableMapper.selectPhysiqueKeyC(physiqueId);
        return keyC;
    }
    @Override
    public String selectPhysiqueKeyD(long physiqueId) {
        String keyD = physiqueTableMapper.selectPhysiqueKeyD(physiqueId);
        return keyD;
    }
}
