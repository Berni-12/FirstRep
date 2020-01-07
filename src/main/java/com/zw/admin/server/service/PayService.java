package com.zw.admin.server.service;

import com.zw.admin.server.model.Pay;

/**
 * @ClassName PayServicce
 * @Description TODO
 * @Author zhangcc
 * @Date 2020/1/3 16:33
 */
public interface PayService {

    int deleteByPrimaryKey(Integer ownerPayId);

    int insertSelective(Pay record);

    Pay selectByPrimaryKey(Integer ownerPayId);

    int updateByPrimaryKeySelective(Pay record);

}
