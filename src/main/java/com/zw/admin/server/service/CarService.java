package com.zw.admin.server.service;

import com.zw.admin.server.model.Car;

/**
 * @ClassName CarService
 * @Description TODO
 * @Author zhangcc
 * @Date 2019/12/31 16:22
 */
public interface CarService {

    int deleteByPrimaryKey(Integer carId);

    int insertSelective(Car record);

    Car selectByPrimaryKey(Integer carId);

    int updateByPrimaryKeySelective(Car record);

}
