package com.zcc.admin.server.dao;

import com.zcc.admin.server.model.Car;
import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Param;
import org.apache.ibatis.annotations.Select;

import java.util.List;
import java.util.Map;

@Mapper
public interface CarMapper {
    int deleteByPrimaryKey(Integer carId);

    int insert(Car record);

    int insertSelective(Car record);

    Car selectByPrimaryKey(Integer carId);

    int updateByPrimaryKeySelective(Car record);

    int updateByPrimaryKey(Car record);

    @Select("select * from tb_car")
    List<Car> getCarList();

    @Select("select COUNT(*) from tb_car")
    Long getCarCount();

    /**
     * 多参数查询车辆信息
     * @param params
     * @return
     */
    List<Car> selectCarList(@Param("params") Map<String,Object> params, @Param("offset") Integer offset,
                                    @Param("limit") Integer limit);

    int count(@Param("params") Map<String, Object> params);
}