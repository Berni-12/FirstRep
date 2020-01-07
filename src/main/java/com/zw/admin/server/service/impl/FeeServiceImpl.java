package com.zw.admin.server.service.impl;

import com.zw.admin.server.dao.FeeMapper;
import com.zw.admin.server.model.Fee;
import com.zw.admin.server.service.FeeService;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

/**
 * @ClassName FeeServiceImpl
 * @Description 缴费项目Service
 * @Author zhangcc
 * @Date 2020/1/1 16:38
 */
@Service
public class FeeServiceImpl implements FeeService {

    @Autowired
    private FeeMapper feeMapper;

    private static final Logger log = LoggerFactory.getLogger("adminLogger");

    @Override
    public int deleteByPrimaryKey(Integer feeId) {
        int result=feeMapper.deleteByPrimaryKey(feeId);
        log.debug("删除ID为{}的缴费项目",feeId);
        return result;
    }

    @Override
    public int insertSelective(Fee record) {
        int result=feeMapper.insertSelective(record);
        log.debug("添加名为{}的缴费项目",record.getFeeName());
        return result;
    }

    @Override
    public Fee selectByPrimaryKey(Integer feeId) {
        Fee fee=new Fee();
        fee=feeMapper.selectByPrimaryKey(feeId);
        log.debug("查询ID为{}缴费项目",feeId);
        return fee;
    }

    @Override
    public int updateByPrimaryKeySelective(Fee record) {
        int result=feeMapper.updateByPrimaryKeySelective(record);
        log.debug("更新名为{}的缴费项目",record.getFeeName());
        return result;
    }
}
