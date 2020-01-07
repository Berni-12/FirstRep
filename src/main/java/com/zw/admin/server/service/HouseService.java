package com.zw.admin.server.service;

import com.zw.admin.server.model.House;
import org.apache.ibatis.annotations.Select;

import java.util.Map;

/**
 * @ClassName HouseService
 * @Description TODO
 * @Author zhangcc
 * @Date 2019/12/31 16:54
 */
public interface HouseService {

    int deleteByPrimaryKey(String houseNo);

    int insertSelective(House record);

    House selectByPrimaryKey(String houseNo);

    int updateByPrimaryKeySelective(House record);

}
