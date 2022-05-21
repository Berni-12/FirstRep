package com.zcc.admin.server.service;

import com.zcc.admin.server.model.SysLogs;

/**
 * 日志service
 * 
 * @author zhangcc
 *
 *         2019年8月19日
 */
public interface SysLogService {

	void save(SysLogs sysLogs);

	void save(Long userId, String module, Boolean flag, String remark);

	void deleteLogs();
}
