package com.zcc.admin.server.service;


import com.zcc.admin.server.model.Visitor;

public interface VisitorService {
    void deleteByPrimaryKey(Integer visitorId);

    void insertSelective(Visitor record);

    Visitor selectByPrimaryKey(Integer visitorId);

    void updateByPrimaryKeySelective(Visitor record);

}
