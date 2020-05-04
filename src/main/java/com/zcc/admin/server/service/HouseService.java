package com.zcc.admin.server.service;

import com.zcc.admin.server.model.House;
import org.springframework.web.multipart.MultipartFile;

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

    String excelHouse(MultipartFile file);

}
