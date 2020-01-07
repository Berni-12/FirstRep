package com.zw.admin.server.dao;

import com.zw.admin.server.model.Car;
import com.zw.admin.server.model.Owner;
import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Select;

import java.util.List;

@Mapper
public interface OwnerMapper {
    int deleteByPrimaryKey(Integer ownerId);

    int insert(Owner record);

    int insertSelective(Owner record);

    Owner selectByPrimaryKey(Integer ownerId);

    int updateByPrimaryKeySelective(Owner record);

    int updateByPrimaryKey(Owner record);

    @Select("select * from tb_owner")
    List<Owner> getOwnerList();

    @Select("select COUNT(*) from tb_owner")
    Long getOwnerCount();
}