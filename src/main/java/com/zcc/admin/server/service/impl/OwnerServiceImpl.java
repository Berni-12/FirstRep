package com.zcc.admin.server.service.impl;

import com.zcc.admin.server.dao.OwnerMapper;
import com.zcc.admin.server.model.Owner;
import com.zcc.admin.server.service.OwnerService;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.text.SimpleDateFormat;
import java.util.Date;

/**
 * @ClassName OwnerServiceImpl
 * @Description 业主Service
 * @Author zhangcc
 * @Date 2019/12/31 15:55
 */

@Service
public class OwnerServiceImpl implements OwnerService {

    @Autowired
    private OwnerMapper ownerMapper;

    private static final Logger log = LoggerFactory.getLogger("adminLogger");

    @Override
    public int deleteByPrimaryKey(Integer ownerId) {
        int result=ownerMapper.deleteByPrimaryKey(ownerId);
        log.debug("删除ID为{}的业主", ownerId);
        return result;
    }

    @Override
    public int insert(Owner record) {
        return 0;
    }

    @Override
    public int insertSelective(Owner record) {
        Date date=new Date();
        SimpleDateFormat dateFormat=new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
        record.setOwnerComeTime(dateFormat.format(date));
        int result=ownerMapper.insertSelective(record);
        log.debug("添加名为{}的业主", record.getOwnerName());
        return result;
    }

    @Override
    public Owner selectByPrimaryKey(Integer ownerId) {
        Owner owner=new Owner();
        owner=ownerMapper.selectByPrimaryKey(ownerId);
        log.debug("查询ID为{}的业主", ownerId);
        return owner;
    }

    @Override
    public int updateByPrimaryKeySelective(Owner record) {
        int result=ownerMapper.updateByPrimaryKeySelective(record);
        log.debug("更新名为{}的业主信息", record.getOwnerName());
        return result;
    }

    @Override
    public int updateByPrimaryKey(Owner record) {
        return 0;
    }
}
