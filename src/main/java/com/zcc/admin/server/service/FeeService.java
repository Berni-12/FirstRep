package com.zcc.admin.server.service;

import com.zcc.admin.server.model.Fee;

/**
 * @ClassName FeeService
 * @Description TODO
 * @Author zhangcc
 * @Date 2020/1/1 16:37
 */
public interface FeeService {

    int deleteByPrimaryKey(Integer feeId);

    int insertSelective(Fee record);

    Fee selectByPrimaryKey(Integer feeId);

    int updateByPrimaryKeySelective(Fee record);

}
