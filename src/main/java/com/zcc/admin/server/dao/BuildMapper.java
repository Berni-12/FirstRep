package com.zcc.admin.server.dao;

import com.zcc.admin.server.model.Build;
import com.zcc.admin.server.model.House;
import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Param;
import org.apache.ibatis.annotations.Select;

import java.util.List;
import java.util.Map;

/**
 * @ClassName BuildMapper
 * @Description TODO
 * @Author zhangcc
 * @Date 2020/1/20 16:38
 */
@Mapper
public interface BuildMapper {

    int deleteByPrimaryKey(Integer id);

    int insertSelective(Build record);

    Build selectByPrimaryKey(Integer id);

    int updateByPrimaryKeySelective(Build record);

    /**
     * 多参数查询楼栋信息
     *
     * @param params
     * @return
     */
    List<Build> selectBuild(@Param("params") Map<String, Object> params, @Param("offset") Integer offset,
                            @Param("limit") Integer limit);

    int count(@Param("params") Map<String, Object> params);

    int insertFormExcel(@Param("builds") List<Build> builds);

    List<House> selectBuildName();

    @Select("select build_name from tb_build")
    List<String> buildNameList();
}
