package com.zw.admin.server.dao;

import com.zw.admin.server.model.Car;
import com.zw.admin.server.model.Visitor;
import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Select;

import java.util.List;

@Mapper
public interface VisitorMapper {
    int deleteByPrimaryKey(Integer visitorId);

    int insertSelective(Visitor record);

    Visitor selectByPrimaryKey(Integer visitorId);

    int updateByPrimaryKeySelective(Visitor record);

    @Select("select * from tb_visitor")
    List<Visitor> getVisitorList();

    @Select("select COUNT(*) from tb_visitor")
    Long getVisitorCount();

}