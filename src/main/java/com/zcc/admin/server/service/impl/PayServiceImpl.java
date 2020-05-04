package com.zcc.admin.server.service.impl;

import com.zcc.admin.server.service.PayService;
import com.zcc.admin.server.dao.PayMapper;
import com.zcc.admin.server.model.Pay;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

/**
 * @ClassName PayServiceImpl
 * @Description 缴费单Service
 * @Author zhangcc
 * @Date 2020/1/3 16:34
 */

@Service
public class PayServiceImpl implements PayService {

    private static final Logger log = LoggerFactory.getLogger("adminLogger");
    @Autowired
    private PayMapper payMapper;

    @Override
    public int deleteByPrimaryKey(Integer ownerPayId) {
        int result = payMapper.deleteByPrimaryKey(ownerPayId);
        log.debug("删除ID为{}的缴费单", ownerPayId);
        return result;
    }

    @Override
    public int insertSelective(Pay record) {
        int result = payMapper.insertSelective(record);
        log.debug("添加ID为{}的缴费单", record.getOwnerId());
        return result;
    }

    @Override
    public Pay selectByPrimaryKey(Integer ownerPayId) {
        Pay pay = new Pay();
        pay = payMapper.selectByPrimaryKey(ownerPayId);
        log.debug("查询ID为{}的缴费单", ownerPayId);
        return pay;
    }

    @Override
    public int updateByPrimaryKeySelective(Pay record) {
        int result = payMapper.updateByPrimaryKeySelective(record);
        log.debug("更新ID为{}的缴费单", record.getOwnerId());
        return result;
    }
}
