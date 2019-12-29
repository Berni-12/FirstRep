package com.zw.admin.server.dao;

import com.zw.admin.server.model.Fee;

public interface FeeMapper {
    int deleteByPrimaryKey(Integer feeId);

    int insert(Fee record);

    int insertSelective(Fee record);

    Fee selectByPrimaryKey(Integer feeId);

    int updateByPrimaryKeySelective(Fee record);

    int updateByPrimaryKey(Fee record);
}