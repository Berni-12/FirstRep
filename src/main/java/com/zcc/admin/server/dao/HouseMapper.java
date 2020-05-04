package com.zcc.admin.server.dao;


import com.zcc.admin.server.model.House;
import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Param;
import org.apache.ibatis.annotations.Select;

import java.util.List;
import java.util.Map;

@Mapper
public interface HouseMapper {
    int deleteByPrimaryKey(String houseNo);

    int insert(House record);

    int insertSelective(House record);

    House selectByPrimaryKey(String houseNo);

    int updateByPrimaryKeySelective(House record);

    int updateByPrimaryKey(House record);

    @Select("select * from tb_house")
    List<House> getHouseList();

    @Select("select COUNT(*) from tb_house")
    Long getHouseCount();

    /**
     * 多参数查询房屋信息
     * @param params
     * @return
     */
    List<House> selectHouse(@Param("params") Map<String,Object> params,@Param("offset") Integer offset,
                            @Param("limit") Integer limit);

    int count(@Param("params") Map<String, Object> params);

    int insertFromExcel(@Param("houses") List<House> houses);

    @Select("select house_no from tb_house where build_name = #{buildName}")
    List<String> houseNoList(String buildName);

}