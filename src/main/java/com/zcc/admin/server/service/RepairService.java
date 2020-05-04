package com.zcc.admin.server.service;

import com.zcc.admin.server.model.Repair;

/**
 * @ClassName RepairService
 * @Description TODO
 * @Author zhangcc
 * @Date 2020/1/10 16:33
 */
public interface RepairService {

    int deleteByPrimaryKey(Integer repairId);

    int insertSelective(Repair record);

    Repair selectByPrimaryKey(Integer repairId);

    int updateByPrimaryKeySelective(Repair record);

}
