package com.zw.admin.server.service.impl;

import com.zw.admin.server.dao.CarMapper;
import com.zw.admin.server.model.Car;
import com.zw.admin.server.service.CarService;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

/**
 * @ClassName CarServiceImpl
 * @Description 车辆Service
 * @Author zhangcc
 * @Date 2019/12/31 16:23
 */

@Service
public class CarServiceImpl implements CarService {

    private static final Logger log = LoggerFactory.getLogger("adminLogger");
    @Autowired
    private CarMapper carMapper;

    @Override
    public int deleteByPrimaryKey(Integer carId) {
        int result = carMapper.deleteByPrimaryKey(carId);
        log.debug("删除ID为{}的车辆信息", carId);
        return result;
    }

    @Override
    public int insertSelective(Car record) {
        int result = carMapper.insertSelective(record);
        log.debug("添加车牌号为{}的车辆信息", record.getCarNum());
        return result;
    }

    @Override
    public Car selectByPrimaryKey(Integer carId) {
        Car car = new Car();
        car = carMapper.selectByPrimaryKey(carId);
        log.debug("查询ID为{}的车辆信息", carId);
        return car;
    }

    @Override
    public int updateByPrimaryKeySelective(Car record) {
        int result = carMapper.updateByPrimaryKeySelective(record);
        log.debug("修改车牌号为{}的车辆信息", record.getCarNum());
        return result;
    }
}
