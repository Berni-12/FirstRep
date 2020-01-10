package com.zw.admin.server.service.impl;

import com.zw.admin.server.dao.VisitorMapper;
import com.zw.admin.server.model.Visitor;
import com.zw.admin.server.service.VisitorService;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.text.SimpleDateFormat;
import java.util.Date;

/**
 * @ClassName VisitorServiceImpl
 * @Description 访客Service
 * @Author zhangcc
 * @Date 2019/12/29 17:31
 */
@Service
public class VisitorServiceImpl implements VisitorService {

    private static final Logger log = LoggerFactory.getLogger("adminLogger");

    @Autowired
    private VisitorMapper visitorMapper;

    @Override
    public void deleteByPrimaryKey(Integer visitorId) {
        log.debug("删除ID为{}的访客", visitorId);
        visitorMapper.deleteByPrimaryKey(visitorId);
    }

    @Override
    public void insertSelective(Visitor record) {
        Date date = new Date();
        SimpleDateFormat dateFormat = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
        record.setVisitorComeTime(dateFormat.format(date));
        visitorMapper.insertSelective(record);

        log.debug("添加访客{}", record.getVisitorName());
    }

    @Override
    public Visitor selectByPrimaryKey(Integer visitorId) {
        Visitor visitor = new Visitor();
        visitor = visitorMapper.selectByPrimaryKey(visitorId);
        if (visitor != null) {
            log.debug("查询访客{}", visitor.getVisitorName());
            return visitor;
        } else {
            return null;
        }
    }

    @Override
    public void updateByPrimaryKeySelective(Visitor record) {
        visitorMapper.updateByPrimaryKeySelective(record);
        log.debug("更新访客{}的信息", record.getVisitorName());
    }

}
