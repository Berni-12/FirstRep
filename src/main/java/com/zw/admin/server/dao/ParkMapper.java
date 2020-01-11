package com.zw.admin.server.dao;

import com.zw.admin.server.model.Car;
import com.zw.admin.server.model.Park;
import com.zw.admin.server.model.Visitor;
import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Param;
import org.apache.ibatis.annotations.Select;

import java.util.List;
import java.util.Map;

@Mapper
public interface ParkMapper {
    int deleteByPrimaryKey(String parkNo);

    int insert(Park record);

    int insertSelective(Park record);

    Park selectByPrimaryKey(String parkNo);

    int updateByPrimaryKeySelective(Park record);

    int updateByPrimaryKey(Park record);

    @Select("select * from tb_park")
    List<Park> getParkList();

    @Select("select COUNT(*) from tb_park")
    Long getParkCount();

    /**
     * 多参数查询车位信息
     * @param params
     * @return
     */
    List<Park> selectParkList(@Param("params") Map<String,Object> params, @Param("offset") Integer offset,
                                    @Param("limit") Integer limit);

    int count(@Param("params") Map<String, Object> params);

}