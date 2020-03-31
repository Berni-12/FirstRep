package com.zw.admin.server.dao;

import com.zw.admin.server.model.Car;
import com.zw.admin.server.model.House;
import com.zw.admin.server.model.Owner;
import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Param;
import org.apache.ibatis.annotations.Select;

import java.util.List;
import java.util.Map;

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

    /**
     * 多参数查询房屋信息
     * @param params
     * @return
     */
    List<Owner> selectOwnerList(@Param("params") Map<String,Object> params, @Param("offset") Integer offset,
                            @Param("limit") Integer limit);

    int count(@Param("params") Map<String, Object> params);

    @Select("select owner_id,owner_name from tb_owner")
    List<Owner> nameIdList();
}