package com.zw.admin.server.service;

import com.zw.admin.server.model.Owner;

/**
 * @ClassName OwnerService
 * @Description 业主service
 * @Author zhangcc
 * @Date 2019/12/31 15:55
 */
public interface OwnerService {

    int deleteByPrimaryKey(Integer ownerId);

    int insert(Owner record);

    int insertSelective(Owner record);

    Owner selectByPrimaryKey(Integer ownerId);

    int updateByPrimaryKeySelective(Owner record);

    int updateByPrimaryKey(Owner record);
}
