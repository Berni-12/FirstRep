package com.zw.admin.server.dao;

import com.zw.admin.server.model.Car;
import org.apache.ibatis.annotations.Mapper;

@Mapper
public interface CarMapper {
    int deleteByPrimaryKey(Integer carId);

    int insert(Car record);

    int insertSelective(Car record);

    Car selectByPrimaryKey(Integer carId);

    int updateByPrimaryKeySelective(Car record);

    int updateByPrimaryKey(Car record);
}