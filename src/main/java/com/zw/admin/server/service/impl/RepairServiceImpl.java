package com.zw.admin.server.service.impl;

import com.zw.admin.server.dao.RepairMapper;
import com.zw.admin.server.dao.VisitorMapper;
import com.zw.admin.server.model.Repair;
import com.zw.admin.server.service.RepairService;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.text.SimpleDateFormat;
import java.util.Date;

/**
 * @ClassName RepairServiceImpl
 * @Description 报修Service
 * @Author zhangcc
 * @Date 2020/1/10 16:34
 */
@Service
public class RepairServiceImpl implements RepairService {

    private static final Logger log = LoggerFactory.getLogger("adminLogger");

    @Autowired
    private RepairMapper  repairMapper;

    @Override
    public int deleteByPrimaryKey(Integer repairId) {
        log.debug("删除ID为{}的报修单", repairId);
        return repairMapper.deleteByPrimaryKey(repairId);
    }

    @Override
    public int insertSelective(Repair record) {
        Date date = new Date();
        SimpleDateFormat dateFormat = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
        record.setRepairTime(dateFormat.format(date));
        return repairMapper.insertSelective(record);
    }

    @Override
    public Repair selectByPrimaryKey(Integer repairId) {
        return repairMapper.selectByPrimaryKey(repairId);
    }

    @Override
    public int updateByPrimaryKeySelective(Repair record) {
        if (record.getRepairState()==1){
            Date date = new Date();
            SimpleDateFormat dateFormat = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
            record.setFinishTime(dateFormat.format(date));
        }
        return repairMapper.updateByPrimaryKeySelective(record);
    }
}
