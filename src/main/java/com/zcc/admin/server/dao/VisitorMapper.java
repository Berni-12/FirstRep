package com.zcc.admin.server.dao;

import com.zcc.admin.server.model.Visitor;
import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Param;
import org.apache.ibatis.annotations.Select;

import java.util.List;
import java.util.Map;

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

    /**
     * 多参数查询访客信息
     * @param params
     * @return
     */
    List<Visitor> selectVisitorList(@Param("params") Map<String,Object> params, @Param("offset") Integer offset,
                                @Param("limit") Integer limit);

    int count(@Param("params") Map<String, Object> params);

}