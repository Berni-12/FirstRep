package com.zw.admin.server.dao;

import com.zw.admin.server.model.Repair;
import org.apache.ibatis.annotations.Mapper;

@Mapper
public interface RepairMapper {
    int deleteByPrimaryKey(Integer repairId);

    int insert(Repair record);

    int insertSelective(Repair record);

    Repair selectByPrimaryKey(Integer repairId);

    int updateByPrimaryKeySelective(Repair record);

    int updateByPrimaryKey(Repair record);
}