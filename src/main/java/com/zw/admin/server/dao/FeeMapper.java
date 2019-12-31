package com.zw.admin.server.dao;

import com.zw.admin.server.model.Fee;
import org.apache.ibatis.annotations.Mapper;

@Mapper
public interface FeeMapper {
    int deleteByPrimaryKey(Integer feeId);

    int insert(Fee record);

    int insertSelective(Fee record);

    Fee selectByPrimaryKey(Integer feeId);

    int updateByPrimaryKeySelective(Fee record);

    int updateByPrimaryKey(Fee record);
}