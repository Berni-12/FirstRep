package com.zw.admin.server.service.impl;

import com.zw.admin.server.dao.CarMapper;
import com.zw.admin.server.dao.ParkMapper;
import com.zw.admin.server.model.Car;
import com.zw.admin.server.model.Park;
import com.zw.admin.server.service.ParkService;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

/**
 * @ClassName ParkServiceImpl
 * @Description 车位Service
 * @Author zhangcc
 * @Date 2020/1/1 16:51
 */
@Service
public class ParkServiceImpl implements ParkService {

    private static final Logger log = LoggerFactory.getLogger("adminLogger");
    @Autowired
    private ParkMapper parkMapper;

    @Override
    public int deleteByPrimaryKey(String parkNo) {
        int result = parkMapper.deleteByPrimaryKey(parkNo);
        log.debug("删除车位号为{}的车位信息", parkNo);
        return result;
    }

    @Override
    public int insertSelective(Park record) {
        int result = parkMapper.insertSelective(record);
        log.debug("添加车位号为{}的车位信息", record.getParkNo());
        return result;
    }

    @Override
    public Park selectByPrimaryKey(String parkNo) {
        Park park = new Park();
        park = parkMapper.selectByPrimaryKey(parkNo);
        log.debug("查询车位号为{}的车位信息", parkNo);
        return park;
    }

    @Override
    public int updateByPrimaryKeySelective(Park record) {
        int result = parkMapper.updateByPrimaryKeySelective(record);
        log.debug("修改车位号为{}的车位信息", record.getParkNo());
        return result;
    }
}
