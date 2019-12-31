package com.zw.admin.server.service;


import com.zw.admin.server.model.Visitor;

public interface VisitorService {
    void deleteByPrimaryKey(Integer visitorId);

    void insertSelective(Visitor record);

    Visitor selectByPrimaryKey(Integer visitorId);

    void updateByPrimaryKeySelective(Visitor record);

}
