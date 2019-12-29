package com.zw.admin.server.dao;

import com.zw.admin.server.model.Pay;

public interface PayMapper {
    int deleteByPrimaryKey(Integer ownerPayId);

    int insert(Pay record);

    int insertSelective(Pay record);

    Pay selectByPrimaryKey(Integer ownerPayId);

    int updateByPrimaryKeySelective(Pay record);

    int updateByPrimaryKey(Pay record);
}