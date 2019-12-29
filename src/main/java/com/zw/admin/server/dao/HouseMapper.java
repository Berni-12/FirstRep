package com.zw.admin.server.dao;


import com.zw.admin.server.model.House;

public interface HouseMapper {
    int deleteByPrimaryKey(String houseNo);

    int insert(House record);

    int insertSelective(House record);

    House selectByPrimaryKey(String houseNo);

    int updateByPrimaryKeySelective(House record);

    int updateByPrimaryKey(House record);
}