package com.zw.admin.server.service.impl;

import com.zw.admin.server.dao.BuildMapper;
import com.zw.admin.server.model.Build;
import com.zw.admin.server.model.House;
import com.zw.admin.server.service.BuildService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

/**
 * @ClassName BuildServiceImpl
 * @Description
 * @Author zhangcc
 * @Date 2020/1/21 10:07
 */

@Service
public class BuildServiceImpl implements BuildService {

    @Autowired
    private BuildMapper buildMapper;

    @Override
    public int deleteByPrimaryKey(Integer id) {
        int result=buildMapper.deleteByPrimaryKey(id);
        return result;
    }

    @Override
    public int insertSelective(Build record) {
        int result=buildMapper.insertSelective(record);
        return result;
    }

    @Override
    public Build selectByPrimaryKey(Integer id) {
        Build build=new Build();
        build = buildMapper.selectByPrimaryKey(id);
        return build;
    }

    @Override
    public int updateByPrimaryKeySelective(Build record) {
        int result=buildMapper.updateByPrimaryKeySelective(record);
        return result;
    }
}
