package com.zw.admin.server.service;

import com.zw.admin.server.model.Park;

/**
 * @ClassName ParkService
 * @Description TODO
 * @Author zhangcc
 * @Date 2020/1/1 16:50
 */
public interface ParkService {

    int deleteByPrimaryKey(String parkNo);

    int insertSelective(Park record);

    Park selectByPrimaryKey(String parkNo);

    int updateByPrimaryKeySelective(Park record);

}
