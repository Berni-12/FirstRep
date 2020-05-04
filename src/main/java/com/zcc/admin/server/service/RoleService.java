package com.zcc.admin.server.service;

import com.zcc.admin.server.dto.RoleDto;

public interface RoleService {

	void saveRole(RoleDto roleDto);

	void deleteRole(Long id);
}
