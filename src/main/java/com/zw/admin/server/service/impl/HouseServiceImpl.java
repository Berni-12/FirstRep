package com.zw.admin.server.service.impl;

import com.zw.admin.server.dao.HouseMapper;
import com.zw.admin.server.model.House;
import com.zw.admin.server.service.HouseService;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

/**
 * @ClassName HouseServiceImpl
 * @Description 房屋Service
 * @Author zhangcc
 * @Date 2019/12/31 16:55
 */
@Service
public class HouseServiceImpl implements HouseService {

    private static final Logger log = LoggerFactory.getLogger("adminLogger");
    @Autowired
    private HouseMapper houseMapper;

    @Override
    public int deleteByPrimaryKey(String houseNo) {
        int result = houseMapper.deleteByPrimaryKey(houseNo);
        log.debug("删除房屋号为{}的房屋信息", houseNo);
        return result;
    }

    @Override
    public int insertSelective(House record) {
        int result = houseMapper.insertSelective(record);
        log.debug("添加房屋号为{}的房屋信息", record.getHouseNo());
        return result;
    }

    @Override
    public House selectByPrimaryKey(String houseNo) {
        House house = new House();
        house = houseMapper.selectByPrimaryKey(houseNo);
        log.debug("查询房屋号为{}的信息", houseNo);
        return house;
    }

    @Override
    public int updateByPrimaryKeySelective(House record) {
        int result = houseMapper.updateByPrimaryKeySelective(record);
        log.debug("更新房屋号为{}的房屋信息", record.getHouseNo());
        return result;
    }
}
