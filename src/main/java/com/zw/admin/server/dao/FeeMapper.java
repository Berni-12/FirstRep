package com.zw.admin.server.dao;

import com.zw.admin.server.model.Car;
import com.zw.admin.server.model.Fee;
import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Select;

import java.util.List;

@Mapper
public interface FeeMapper {
    int deleteByPrimaryKey(Integer feeId);

    int insert(Fee record);

    int insertSelective(Fee record);

    Fee selectByPrimaryKey(Integer feeId);

    int updateByPrimaryKeySelective(Fee record);

    int updateByPrimaryKey(Fee record);

    @Select("select * from tb_fee")
    List<Fee> getFeeList();

    @Select("select COUNT(*) from tb_fee")
    Long getFeeCount();
}