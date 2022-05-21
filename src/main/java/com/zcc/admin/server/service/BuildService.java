package com.zcc.admin.server.service;

import com.zcc.admin.server.model.Build;
import org.springframework.web.multipart.MultipartFile;

/**
 * @ClassName BuildService
 * @Description TODO
 * @Author zhangcc
 * @Date 2020/1/21 10:07
 */
public interface BuildService {

    int deleteByPrimaryKey(Integer id);

    int insertSelective(Build record);

    Build selectByPrimaryKey(Integer id);

    int updateByPrimaryKeySelective(Build record);

    String excelBuild(MultipartFile file);
}
