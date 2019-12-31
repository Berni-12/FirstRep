package com.zw.admin.server.dao;

import com.zw.admin.server.model.Visitor;
import org.apache.ibatis.annotations.Mapper;

@Mapper
public interface VisitorMapper {
    int deleteByPrimaryKey(Integer visitorId);

    int insertSelective(Visitor record);

    Visitor selectByPrimaryKey(Integer visitorId);

    int updateByPrimaryKeySelective(Visitor record);

}