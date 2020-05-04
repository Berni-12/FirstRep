package com.zcc.admin.server.dao;

import com.zcc.admin.server.model.Pay;
import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Select;

import java.util.List;

@Mapper
public interface PayMapper {
    int deleteByPrimaryKey(Integer ownerPayId);

    int insert(Pay record);

    int insertSelective(Pay record);

    Pay selectByPrimaryKey(Integer ownerPayId);

    int updateByPrimaryKeySelective(Pay record);

    int updateByPrimaryKey(Pay record);

    @Select("select * from tb_pay")
    List<Pay> getPayList();

    @Select("select COUNT(*) from tb_pay")
    Long getPayCount();
}