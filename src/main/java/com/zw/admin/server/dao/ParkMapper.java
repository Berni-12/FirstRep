package com.zw.admin.server.dao;

import com.zw.admin.server.model.Park;
import org.apache.ibatis.annotations.Mapper;

@Mapper
public interface ParkMapper {
    int deleteByPrimaryKey(String parkNo);

    int insert(Park record);

    int insertSelective(Park record);

    Park selectByPrimaryKey(String parkNo);

    int updateByPrimaryKeySelective(Park record);

    int updateByPrimaryKey(Park record);
}