package com.zcc.admin.server.service;

import com.zcc.admin.server.model.Park;
import org.springframework.web.multipart.MultipartFile;

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

    String excelPark(MultipartFile file);

}
