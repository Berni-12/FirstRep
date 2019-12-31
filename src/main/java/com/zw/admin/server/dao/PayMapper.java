package com.zw.admin.server.dao;

import com.zw.admin.server.model.Pay;
import org.apache.ibatis.annotations.Mapper;

@Mapper
public interface PayMapper {
    int deleteByPrimaryKey(Integer ownerPayId);

    int insert(Pay record);

    int insertSelective(Pay record);

    Pay selectByPrimaryKey(Integer ownerPayId);

    int updateByPrimaryKeySelective(Pay record);

    int updateByPrimaryKey(Pay record);
}