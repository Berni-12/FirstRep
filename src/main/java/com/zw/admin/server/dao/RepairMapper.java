package com.zw.admin.server.dao;

import com.zw.admin.server.model.Repair;
import com.zw.admin.server.model.Visitor;
import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Param;
import org.apache.ibatis.annotations.Select;

import java.util.List;
import java.util.Map;

@Mapper
public interface RepairMapper {
    int deleteByPrimaryKey(Integer repairId);

    int insert(Repair record);

    int insertSelective(Repair record);

    Repair selectByPrimaryKey(Integer repairId);

    int updateByPrimaryKeySelective(Repair record);

    int updateByPrimaryKey(Repair record);

    @Select("select * from tb_repair")
    List<Repair> getRepairList();

    @Select("select COUNT(*) from tb_repair")
    Long getRepairCount();

    /**
     * 多参数查询房屋信息
     * @param params
     * @return
     */
    List<Repair> selectRepairList(@Param("params") Map<String,Object> params, @Param("offset") Integer offset,
                                    @Param("limit") Integer limit);

    int count(@Param("params") Map<String, Object> params);
}