2022-05-17 14:36:53,284 [http-nio-8081-exec-9] ==>  Preparing: select * from sys_user t where t.username = ? 
2022-05-17 14:36:53,443 [http-nio-8081-exec-9] ==> Parameters: muller(String)
2022-05-17 14:36:53,535 [http-nio-8081-exec-9] <==      Total: 1
2022-05-17 14:36:53,577 [http-nio-8081-exec-9] ==>  Preparing: insert into sys_logs(userId, module, flag, remark, createTime) values(?, ?, ?, ?, now()) 
2022-05-17 14:36:53,589 [http-nio-8081-exec-9] ==> Parameters: 5(Long), web端登陆(String), true(Boolean), null
2022-05-17 14:36:53,690 [http-nio-8081-exec-9] <==    Updates: 1
2022-05-17 14:36:53,943 [http-nio-8081-exec-7] ==>  Preparing: select distinct p.* from sys_permission p inner join sys_role_permission rp on p.id = rp.permissionId inner join sys_role_user ru on ru.roleId = rp.roleId where ru.userId = ? order by p.sort 
2022-05-17 14:36:53,970 [http-nio-8081-exec-7] ==> Parameters: 5(Long)
2022-05-17 14:36:54,027 [http-nio-8081-exec-7] <==      Total: 11
2022-05-17 14:36:54,178 [http-nio-8081-exec-1] ==>  Preparing: select count(1) from t_notice t left join t_notice_read r on r.noticeId = t.id and r.userId = ? where t.status = 1 and r.userId is null 
2022-05-17 14:36:54,181 [http-nio-8081-exec-1] ==> Parameters: 5(Long)
2022-05-17 14:36:54,204 [http-nio-8081-exec-3] ==>  Preparing: select count(1) from t_notice t left join t_notice_read r on r.noticeId = t.id and r.userId = ? where t.status = 1 and r.userId is null 
2022-05-17 14:36:54,205 [http-nio-8081-exec-3] ==> Parameters: 5(Long)
2022-05-17 14:36:54,255 [http-nio-8081-exec-1] <==      Total: 1
2022-05-17 14:36:54,269 [http-nio-8081-exec-7] ==>  Preparing: select * from sys_role r inner join sys_role_user ru on r.id = ru.roleId where ru.userId = ? 
2022-05-17 14:36:54,270 [http-nio-8081-exec-7] ==> Parameters: 5(Long)
2022-05-17 14:36:54,272 [http-nio-8081-exec-3] <==      Total: 1
2022-05-17 14:36:54,275 [http-nio-8081-exec-7] <==      Total: 1
2022-05-17 14:36:54,281 [http-nio-8081-exec-7] ==>  Preparing: select distinct p.* from sys_permission p inner join sys_role_permission rp on p.id = rp.permissionId inner join sys_role_user ru on ru.roleId = rp.roleId where ru.userId = ? order by p.sort 
2022-05-17 14:36:54,282 [http-nio-8081-exec-7] ==> Parameters: 5(Long)
2022-05-17 14:36:54,287 [http-nio-8081-exec-7] <==      Total: 11
2022-05-17 14:37:10,194 [http-nio-8081-exec-7] ==>  Preparing: select * from t_dict t where t.type = ? 
2022-05-17 14:37:10,195 [http-nio-8081-exec-7] ==> Parameters: noticeStatus(String)
2022-05-17 14:37:10,300 [http-nio-8081-exec-7] <==      Total: 2
2022-05-17 14:37:10,612 [http-nio-8081-exec-4] ==>  Preparing: select count(1) from t_notice t 
2022-05-17 14:37:10,613 [http-nio-8081-exec-4] ==> Parameters: 
2022-05-17 14:37:10,702 [http-nio-8081-exec-4] <==      Total: 1
2022-05-17 14:37:10,707 [http-nio-8081-exec-4] ==>  Preparing: select * from t_notice t order by updateTime desc, title desc limit ?, ? 
2022-05-17 14:37:10,708 [http-nio-8081-exec-4] ==> Parameters: 0(Integer), 10(Integer)
2022-05-17 14:37:10,713 [http-nio-8081-exec-4] <==      Total: 4
2022-05-17 14:37:13,027 [http-nio-8081-exec-4] ==>  Preparing: select count(1) from tb_house t 
2022-05-17 14:37:13,027 [http-nio-8081-exec-4] ==> Parameters: 
2022-05-17 14:37:13,318 [http-nio-8081-exec-4] <==      Total: 1
2022-05-17 14:37:13,344 [http-nio-8081-exec-4] ==>  Preparing: select house_no, owner_id, house_type, house_area,build_name,build_id,owner_name from tb_house limit ?, ? 
2022-05-17 14:37:13,349 [http-nio-8081-exec-4] ==> Parameters: 0(Integer), 10(Integer)
2022-05-17 14:37:13,351 [http-nio-8081-exec-4] <==      Total: 10
2022-05-17 14:37:28,048 [http-nio-8081-exec-8] ==>  Preparing: select count(1) from tb_build t 
2022-05-17 14:37:28,049 [http-nio-8081-exec-8] ==> Parameters: 
2022-05-17 14:37:28,053 [http-nio-8081-exec-8] <==      Total: 1
2022-05-17 14:37:28,057 [http-nio-8081-exec-8] ==>  Preparing: select id, build_name, build_area, build_floor from tb_build limit ?, ? 
2022-05-17 14:37:28,057 [http-nio-8081-exec-8] ==> Parameters: 0(Integer), 10(Integer)
2022-05-17 14:37:28,059 [http-nio-8081-exec-8] <==      Total: 10
2022-05-17 14:37:47,132 [taskExecutor-1] ==>  Preparing: insert into sys_logs(userId, module, flag, remark, createTime) values(?, ?, ?, ?, now()) 
2022-05-17 14:37:47,133 [taskExecutor-1] ==> Parameters: 5(Long), 退出(String), true(Boolean), null
2022-05-17 14:37:47,188 [taskExecutor-1] <==    Updates: 1
2022-05-17 14:37:52,027 [http-nio-8081-exec-3] ==>  Preparing: select * from sys_user t where t.username = ? 
2022-05-17 14:37:52,028 [http-nio-8081-exec-3] ==> Parameters: 小虎(String)
2022-05-17 14:37:52,031 [http-nio-8081-exec-3] <==      Total: 1
2022-05-17 14:37:52,035 [http-nio-8081-exec-3] ==>  Preparing: insert into sys_logs(userId, module, flag, remark, createTime) values(?, ?, ?, ?, now()) 
2022-05-17 14:37:52,036 [http-nio-8081-exec-3] ==> Parameters: 3(Long), web端登陆(String), true(Boolean), null
2022-05-17 14:37:52,209 [http-nio-8081-exec-3] <==    Updates: 1
2022-05-17 14:37:52,315 [http-nio-8081-exec-8] ==>  Preparing: select distinct p.* from sys_permission p inner join sys_role_permission rp on p.id = rp.permissionId inner join sys_role_user ru on ru.roleId = rp.roleId where ru.userId = ? order by p.sort 
2022-05-17 14:37:52,316 [http-nio-8081-exec-8] ==> Parameters: 3(Long)
2022-05-17 14:37:52,320 [http-nio-8081-exec-8] <==      Total: 14
2022-05-17 14:37:52,340 [http-nio-8081-exec-5] ==>  Preparing: select count(1) from t_notice t left join t_notice_read r on r.noticeId = t.id and r.userId = ? where t.status = 1 and r.userId is null 
2022-05-17 14:37:52,341 [http-nio-8081-exec-5] ==> Parameters: 3(Long)
2022-05-17 14:37:52,343 [http-nio-8081-exec-5] <==      Total: 1
2022-05-17 14:37:52,420 [http-nio-8081-exec-2] ==>  Preparing: select count(1) from t_notice t left join t_notice_read r on r.noticeId = t.id and r.userId = ? where t.status = 1 and r.userId is null 
2022-05-17 14:37:52,421 [http-nio-8081-exec-2] ==> Parameters: 3(Long)
2022-05-17 14:37:52,423 [http-nio-8081-exec-2] <==      Total: 1
2022-05-17 14:37:52,426 [http-nio-8081-exec-10] ==>  Preparing: select * from sys_role r inner join sys_role_user ru on r.id = ru.roleId where ru.userId = ? 
2022-05-17 14:37:52,427 [http-nio-8081-exec-10] ==> Parameters: 3(Long)
2022-05-17 14:37:52,428 [http-nio-8081-exec-10] <==      Total: 1
2022-05-17 14:37:52,431 [http-nio-8081-exec-10] ==>  Preparing: select distinct p.* from sys_permission p inner join sys_role_permission rp on p.id = rp.permissionId inner join sys_role_user ru on ru.roleId = rp.roleId where ru.userId = ? order by p.sort 
2022-05-17 14:37:52,432 [http-nio-8081-exec-10] ==> Parameters: 3(Long)
2022-05-17 14:37:52,434 [http-nio-8081-exec-10] <==      Total: 14
2022-05-17 14:38:04,261 [http-nio-8081-exec-3] ==>  Preparing: select count(1) from tb_park t 
2022-05-17 14:38:04,262 [http-nio-8081-exec-3] ==> Parameters: 
2022-05-17 14:38:04,266 [http-nio-8081-exec-3] <==      Total: 1
2022-05-17 14:38:04,270 [http-nio-8081-exec-3] ==>  Preparing: select park_no, owner_id, expira_date, park_area,park_type,owner_name from tb_park limit ?, ? 
2022-05-17 14:38:04,271 [http-nio-8081-exec-3] ==> Parameters: 0(Integer), 10(Integer)
2022-05-17 14:38:04,273 [http-nio-8081-exec-3] <==      Total: 10
2022-05-17 14:38:04,634 [http-nio-8081-exec-9] ==>  Preparing: select count(1) from t_notice t 
2022-05-17 14:38:04,634 [http-nio-8081-exec-9] ==> Parameters: 
2022-05-17 14:38:04,653 [http-nio-8081-exec-9] <==      Total: 1
2022-05-17 14:38:04,657 [http-nio-8081-exec-9] ==>  Preparing: select * from t_notice t order by updateTime desc, title desc limit ?, ? 
2022-05-17 14:38:04,658 [http-nio-8081-exec-9] ==> Parameters: 0(Integer), 10(Integer)
2022-05-17 14:38:04,659 [http-nio-8081-exec-9] <==      Total: 4
2022-05-17 14:38:08,230 [http-nio-8081-exec-7] ==>  Preparing: select * from t_dict t where t.type = ? 
2022-05-17 14:38:08,230 [http-nio-8081-exec-7] ==> Parameters: isRead(String)
2022-05-17 14:38:08,232 [http-nio-8081-exec-7] <==      Total: 2
2022-05-17 14:38:08,263 [http-nio-8081-exec-3] ==>  Preparing: select count(1) from t_notice t left join t_notice_read r on r.noticeId = t.id and r.userId = ? WHERE t.status = 1 
2022-05-17 14:38:08,264 [http-nio-8081-exec-3] ==> Parameters: 3(Long)
2022-05-17 14:38:08,265 [http-nio-8081-exec-3] <==      Total: 1
2022-05-17 14:38:08,270 [http-nio-8081-exec-3] ==>  Preparing: select t.*,r.createTime readTime, if(r.createTime is null, 0, 1) isRead,r.userId from t_notice t left join t_notice_read r on r.noticeId = t.id and r.userId = ? WHERE t.status = 1 order by updateTime desc limit ?, ? 
2022-05-17 14:38:08,271 [http-nio-8081-exec-3] ==> Parameters: 3(Long), 0(Integer), 10(Integer)
2022-05-17 14:38:08,274 [http-nio-8081-exec-3] <==      Total: 4
2022-05-17 14:38:22,178 [taskExecutor-2] ==>  Preparing: insert into sys_logs(userId, module, flag, remark, createTime) values(?, ?, ?, ?, now()) 
2022-05-17 14:38:22,179 [taskExecutor-2] ==> Parameters: 3(Long), 退出(String), true(Boolean), null
2022-05-17 14:38:22,314 [taskExecutor-2] <==    Updates: 1
2022-05-17 14:38:25,918 [http-nio-8081-exec-9] ==>  Preparing: select * from sys_user t where t.username = ? 
2022-05-17 14:38:25,918 [http-nio-8081-exec-9] ==> Parameters: user(String)
2022-05-17 14:38:25,920 [http-nio-8081-exec-9] <==      Total: 1
2022-05-17 14:38:25,925 [http-nio-8081-exec-9] ==>  Preparing: insert into sys_logs(userId, module, flag, remark, createTime) values(?, ?, ?, ?, now()) 
2022-05-17 14:38:25,925 [http-nio-8081-exec-9] ==> Parameters: 2(Long), web端登陆(String), true(Boolean), null
2022-05-17 14:38:25,970 [http-nio-8081-exec-9] <==    Updates: 1
2022-05-17 14:38:26,045 [http-nio-8081-exec-3] ==>  Preparing: select distinct p.* from sys_permission p inner join sys_role_permission rp on p.id = rp.permissionId inner join sys_role_user ru on ru.roleId = rp.roleId where ru.userId = ? order by p.sort 
2022-05-17 14:38:26,045 [http-nio-8081-exec-3] ==> Parameters: 2(Long)
2022-05-17 14:38:26,048 [http-nio-8081-exec-3] <==      Total: 9
2022-05-17 14:38:26,074 [http-nio-8081-exec-6] ==>  Preparing: select count(1) from t_notice t left join t_notice_read r on r.noticeId = t.id and r.userId = ? where t.status = 1 and r.userId is null 
2022-05-17 14:38:26,075 [http-nio-8081-exec-6] ==> Parameters: 2(Long)
2022-05-17 14:38:26,076 [http-nio-8081-exec-6] <==      Total: 1
2022-05-17 14:38:26,149 [http-nio-8081-exec-6] ==>  Preparing: select count(1) from t_notice t left join t_notice_read r on r.noticeId = t.id and r.userId = ? where t.status = 1 and r.userId is null 
2022-05-17 14:38:26,149 [http-nio-8081-exec-6] ==> Parameters: 2(Long)
2022-05-17 14:38:26,151 [http-nio-8081-exec-6] <==      Total: 1
2022-05-17 14:38:26,153 [http-nio-8081-exec-3] ==>  Preparing: select * from sys_role r inner join sys_role_user ru on r.id = ru.roleId where ru.userId = ? 
2022-05-17 14:38:26,154 [http-nio-8081-exec-3] ==> Parameters: 2(Long)
2022-05-17 14:38:26,156 [http-nio-8081-exec-3] <==      Total: 1
2022-05-17 14:38:26,159 [http-nio-8081-exec-3] ==>  Preparing: select distinct p.* from sys_permission p inner join sys_role_permission rp on p.id = rp.permissionId inner join sys_role_user ru on ru.roleId = rp.roleId where ru.userId = ? order by p.sort 
2022-05-17 14:38:26,159 [http-nio-8081-exec-3] ==> Parameters: 2(Long)
2022-05-17 14:38:26,162 [http-nio-8081-exec-3] <==      Total: 9
2022-05-17 14:38:30,859 [http-nio-8081-exec-10] ==>  Preparing: select count(1) from tb_owner t 
2022-05-17 14:38:30,859 [http-nio-8081-exec-10] ==> Parameters: 
2022-05-17 14:38:30,864 [http-nio-8081-exec-10] <==      Total: 1
2022-05-17 14:38:30,868 [http-nio-8081-exec-10] ==>  Preparing: select owner_id, owner_name, owner_sex, owner_phone, owner_come_time, owner_id_card from tb_owner limit ?, ? 
2022-05-17 14:38:30,869 [http-nio-8081-exec-10] ==> Parameters: 0(Integer), 10(Integer)
2022-05-17 14:38:30,870 [http-nio-8081-exec-10] <==      Total: 5
2022-05-17 14:38:36,096 [http-nio-8081-exec-10] ==>  Preparing: select owner_id, owner_name, owner_sex, owner_phone, owner_come_time, owner_id_card from tb_owner where owner_id = ? 
2022-05-17 14:38:36,096 [http-nio-8081-exec-10] ==> Parameters: 2(Integer)
2022-05-17 14:38:36,097 [http-nio-8081-exec-10] <==      Total: 1
2022-05-17 14:39:03,720 [taskExecutor-3] ==>  Preparing: insert into sys_logs(userId, module, flag, remark, createTime) values(?, ?, ?, ?, now()) 
2022-05-17 14:39:03,721 [taskExecutor-3] ==> Parameters: 2(Long), 退出(String), true(Boolean), null
2022-05-17 14:39:03,845 [taskExecutor-3] <==    Updates: 1
2022-05-17 14:39:06,982 [http-nio-8081-exec-3] ==>  Preparing: select * from sys_user t where t.username = ? 
2022-05-17 14:39:06,983 [http-nio-8081-exec-3] ==> Parameters: admin(String)
2022-05-17 14:39:06,985 [http-nio-8081-exec-3] <==      Total: 1
2022-05-17 14:39:06,988 [http-nio-8081-exec-3] ==>  Preparing: insert into sys_logs(userId, module, flag, remark, createTime) values(?, ?, ?, ?, now()) 
2022-05-17 14:39:06,989 [http-nio-8081-exec-3] ==> Parameters: 1(Long), web端登陆(String), true(Boolean), null
2022-05-17 14:39:07,023 [http-nio-8081-exec-3] <==    Updates: 1
2022-05-17 14:39:07,093 [http-nio-8081-exec-3] ==>  Preparing: select distinct p.* from sys_permission p inner join sys_role_permission rp on p.id = rp.permissionId inner join sys_role_user ru on ru.roleId = rp.roleId where ru.userId = ? order by p.sort 
2022-05-17 14:39:07,094 [http-nio-8081-exec-3] ==> Parameters: 1(Long)
2022-05-17 14:39:07,097 [http-nio-8081-exec-3] <==      Total: 50
2022-05-17 14:39:07,129 [http-nio-8081-exec-4] ==>  Preparing: select count(1) from t_notice t left join t_notice_read r on r.noticeId = t.id and r.userId = ? where t.status = 1 and r.userId is null 
2022-05-17 14:39:07,130 [http-nio-8081-exec-4] ==> Parameters: 1(Long)
2022-05-17 14:39:07,132 [http-nio-8081-exec-4] <==      Total: 1
2022-05-17 14:39:07,220 [http-nio-8081-exec-1] ==>  Preparing: select count(1) from t_notice t left join t_notice_read r on r.noticeId = t.id and r.userId = ? where t.status = 1 and r.userId is null 
2022-05-17 14:39:07,220 [http-nio-8081-exec-1] ==> Parameters: 1(Long)
2022-05-17 14:39:07,221 [http-nio-8081-exec-1] <==      Total: 1
2022-05-17 14:39:07,227 [http-nio-8081-exec-7] ==>  Preparing: select * from sys_role r inner join sys_role_user ru on r.id = ru.roleId where ru.userId = ? 
2022-05-17 14:39:07,228 [http-nio-8081-exec-7] ==> Parameters: 1(Long)
2022-05-17 14:39:07,230 [http-nio-8081-exec-7] <==      Total: 1
2022-05-17 14:39:07,233 [http-nio-8081-exec-7] ==>  Preparing: select distinct p.* from sys_permission p inner join sys_role_permission rp on p.id = rp.permissionId inner join sys_role_user ru on ru.roleId = rp.roleId where ru.userId = ? order by p.sort 
2022-05-17 14:39:07,233 [http-nio-8081-exec-7] ==> Parameters: 1(Long)
2022-05-17 14:39:07,235 [http-nio-8081-exec-7] <==      Total: 50
2022-05-17 14:39:07,242 [http-nio-8081-exec-7] ==>  Preparing: SELECT name,description FROM sys_role sr LEFT JOIN sys_role_user sru ON sr.id=sru.roleId LEFT JOIN sys_user su ON sru.userId=su.id WHERE su.id=? 
2022-05-17 14:39:07,244 [http-nio-8081-exec-7] ==> Parameters: 1(Long)
2022-05-17 14:39:07,244 [http-nio-8081-exec-7] <==      Total: 1
2022-05-17 14:39:14,011 [http-nio-8081-exec-6] ==>  Preparing: select * from t_dict t where t.type = ? 
2022-05-17 14:39:14,012 [http-nio-8081-exec-6] ==> Parameters: userStatus(String)
2022-05-17 14:39:14,013 [http-nio-8081-exec-6] <==      Total: 3
2022-05-17 14:39:14,052 [http-nio-8081-exec-7] ==>  Preparing: select count(1) from sys_user t 
2022-05-17 14:39:14,053 [http-nio-8081-exec-7] ==> Parameters: 
2022-05-17 14:39:14,055 [http-nio-8081-exec-7] <==      Total: 1
2022-05-17 14:39:14,059 [http-nio-8081-exec-7] ==>  Preparing: select * from sys_user t order by username desc, nickname asc limit ?, ? 
2022-05-17 14:39:14,060 [http-nio-8081-exec-7] ==> Parameters: 0(Integer), 10(Integer)
2022-05-17 14:39:14,061 [http-nio-8081-exec-7] <==      Total: 5
2022-05-17 14:39:22,439 [http-nio-8081-exec-2] ==>  Preparing: select * from t_dict t where t.type = ? 
2022-05-17 14:39:22,439 [http-nio-8081-exec-2] ==> Parameters: sex(String)
2022-05-17 14:39:22,441 [http-nio-8081-exec-2] <==      Total: 2
2022-05-17 14:39:22,453 [http-nio-8081-exec-8] ==>  Preparing: select * from sys_role t 
2022-05-17 14:39:22,453 [http-nio-8081-exec-8] ==> Parameters: 
2022-05-17 14:39:22,454 [http-nio-8081-exec-8] <==      Total: 4
2022-05-17 14:39:22,465 [http-nio-8081-exec-6] ==>  Preparing: select * from sys_user t where t.id = ? 
2022-05-17 14:39:22,465 [http-nio-8081-exec-6] ==> Parameters: 3(Long)
2022-05-17 14:39:22,466 [http-nio-8081-exec-6] <==      Total: 1
2022-05-17 14:39:22,475 [http-nio-8081-exec-4] ==>  Preparing: select * from sys_role r inner join sys_role_user ru on r.id = ru.roleId where ru.userId = ? 
2022-05-17 14:39:22,476 [http-nio-8081-exec-4] ==> Parameters: 3(Long)
2022-05-17 14:39:22,477 [http-nio-8081-exec-4] <==      Total: 1
2022-05-17 14:39:31,553 [http-nio-8081-exec-5] ==>  Preparing: select count(1) from sys_user t 
2022-05-17 14:39:31,553 [http-nio-8081-exec-5] ==> Parameters: 
2022-05-17 14:39:31,556 [http-nio-8081-exec-5] <==      Total: 1
2022-05-17 14:39:31,560 [http-nio-8081-exec-5] ==>  Preparing: select * from sys_user t order by username desc, nickname asc limit ?, ? 
2022-05-17 14:39:31,561 [http-nio-8081-exec-5] ==> Parameters: 0(Integer), 10(Integer)
2022-05-17 14:39:31,562 [http-nio-8081-exec-5] <==      Total: 5
2022-05-17 14:39:35,381 [http-nio-8081-exec-2] ==>  Preparing: select * from sys_permission t order by t.sort 
2022-05-17 14:39:35,382 [http-nio-8081-exec-2] ==> Parameters: 
2022-05-17 14:39:35,384 [http-nio-8081-exec-2] <==      Total: 54
2022-05-17 14:39:41,830 [http-nio-8081-exec-8] ==>  Preparing: select count(1) from sys_role t 
2022-05-17 14:39:41,831 [http-nio-8081-exec-8] ==> Parameters: 
2022-05-17 14:39:41,833 [http-nio-8081-exec-8] <==      Total: 1
2022-05-17 14:39:41,837 [http-nio-8081-exec-8] ==>  Preparing: select * from sys_role t order by updateTime desc limit ?, ? 
2022-05-17 14:39:41,838 [http-nio-8081-exec-8] ==> Parameters: 0(Integer), 10(Integer)
2022-05-17 14:39:41,840 [http-nio-8081-exec-8] <==      Total: 4
2022-05-17 14:39:49,409 [http-nio-8081-exec-9] ==>  Preparing: select * from sys_permission t order by t.sort 
2022-05-17 14:39:49,409 [http-nio-8081-exec-9] ==> Parameters: 
2022-05-17 14:39:49,411 [http-nio-8081-exec-9] <==      Total: 54
2022-05-17 14:39:49,440 [http-nio-8081-exec-7] ==>  Preparing: select * from sys_role t where t.id = ? 
2022-05-17 14:39:49,440 [http-nio-8081-exec-7] ==> Parameters: 2(Long)
2022-05-17 14:39:49,441 [http-nio-8081-exec-7] <==      Total: 1
2022-05-17 14:39:49,452 [http-nio-8081-exec-5] ==>  Preparing: select p.* from sys_permission p inner join sys_role_permission rp on p.id = rp.permissionId where rp.roleId = ? order by p.sort 
2022-05-17 14:39:49,452 [http-nio-8081-exec-5] ==> Parameters: 2(Long)
2022-05-17 14:39:49,454 [http-nio-8081-exec-5] <==      Total: 9
2022-05-17 14:40:05,816 [http-nio-8081-exec-5] ==>  Preparing: select count(1) from sys_role t 
2022-05-17 14:40:05,817 [http-nio-8081-exec-5] ==> Parameters: 
2022-05-17 14:40:05,819 [http-nio-8081-exec-5] <==      Total: 1
2022-05-17 14:40:05,822 [http-nio-8081-exec-5] ==>  Preparing: select * from sys_role t order by updateTime desc limit ?, ? 
2022-05-17 14:40:05,822 [http-nio-8081-exec-5] ==> Parameters: 0(Integer), 10(Integer)
2022-05-17 14:40:05,824 [http-nio-8081-exec-5] <==      Total: 4
2022-05-17 14:40:07,399 [http-nio-8081-exec-5] ==>  Preparing: select count(1) from t_notice t 
2022-05-17 14:40:07,400 [http-nio-8081-exec-5] ==> Parameters: 
2022-05-17 14:40:07,402 [http-nio-8081-exec-5] <==      Total: 1
2022-05-17 14:40:07,407 [http-nio-8081-exec-5] ==>  Preparing: select * from t_notice t order by updateTime desc, title desc limit ?, ? 
2022-05-17 14:40:07,407 [http-nio-8081-exec-5] ==> Parameters: 0(Integer), 10(Integer)
2022-05-17 14:40:07,409 [http-nio-8081-exec-5] <==      Total: 4
2022-05-17 16:19:32,132 [http-nio-8081-exec-3] ==>  Preparing: select * from sys_user t where t.username = ? 
2022-05-17 16:19:32,234 [http-nio-8081-exec-3] ==> Parameters: admin(String)
2022-05-17 16:19:32,244 [http-nio-8081-exec-3] <==      Total: 1
2022-05-17 16:19:32,250 [http-nio-8081-exec-3] ==>  Preparing: insert into sys_logs(userId, module, flag, remark, createTime) values(?, ?, ?, ?, now()) 
2022-05-17 16:19:32,251 [http-nio-8081-exec-3] ==> Parameters: 1(Long), web端登陆(String), true(Boolean), null
2022-05-17 16:19:32,342 [http-nio-8081-exec-3] <==    Updates: 1
2022-05-17 16:19:32,528 [http-nio-8081-exec-6] ==>  Preparing: select distinct p.* from sys_permission p inner join sys_role_permission rp on p.id = rp.permissionId inner join sys_role_user ru on ru.roleId = rp.roleId where ru.userId = ? order by p.sort 
2022-05-17 16:19:32,528 [http-nio-8081-exec-6] ==> Parameters: 1(Long)
2022-05-17 16:19:32,532 [http-nio-8081-exec-6] <==      Total: 50
2022-05-17 16:19:32,571 [http-nio-8081-exec-8] ==>  Preparing: select count(1) from t_notice t left join t_notice_read r on r.noticeId = t.id and r.userId = ? where t.status = 1 and r.userId is null 
2022-05-17 16:19:32,571 [http-nio-8081-exec-8] ==> Parameters: 1(Long)
2022-05-17 16:19:32,573 [http-nio-8081-exec-8] <==      Total: 1
2022-05-17 16:19:32,668 [http-nio-8081-exec-5] ==>  Preparing: select count(1) from t_notice t left join t_notice_read r on r.noticeId = t.id and r.userId = ? where t.status = 1 and r.userId is null 
2022-05-17 16:19:32,668 [http-nio-8081-exec-5] ==> Parameters: 1(Long)
2022-05-17 16:19:32,670 [http-nio-8081-exec-5] <==      Total: 1
2022-05-17 16:19:32,685 [http-nio-8081-exec-9] ==>  Preparing: select * from sys_role r inner join sys_role_user ru on r.id = ru.roleId where ru.userId = ? 
2022-05-17 16:19:32,686 [http-nio-8081-exec-9] ==> Parameters: 1(Long)
2022-05-17 16:19:32,687 [http-nio-8081-exec-9] <==      Total: 1
2022-05-17 16:19:32,692 [http-nio-8081-exec-9] ==>  Preparing: select distinct p.* from sys_permission p inner join sys_role_permission rp on p.id = rp.permissionId inner join sys_role_user ru on ru.roleId = rp.roleId where ru.userId = ? order by p.sort 
2022-05-17 16:19:32,692 [http-nio-8081-exec-9] ==> Parameters: 1(Long)
2022-05-17 16:19:32,695 [http-nio-8081-exec-9] <==      Total: 50
2022-05-17 16:19:32,700 [http-nio-8081-exec-9] ==>  Preparing: SELECT name,description FROM sys_role sr LEFT JOIN sys_role_user sru ON sr.id=sru.roleId LEFT JOIN sys_user su ON sru.userId=su.id WHERE su.id=? 
2022-05-17 16:19:32,700 [http-nio-8081-exec-9] ==> Parameters: 1(Long)
2022-05-17 16:19:32,702 [http-nio-8081-exec-9] <==      Total: 1
2022-05-17 16:19:41,925 [http-nio-8081-exec-2] ==>  Preparing: select count(1) from sys_user t 
2022-05-17 16:19:41,925 [http-nio-8081-exec-2] ==> Parameters: 
2022-05-17 16:19:41,949 [http-nio-8081-exec-2] <==      Total: 1
2022-05-17 16:19:41,952 [http-nio-8081-exec-2] ==>  Preparing: select * from sys_user t order by username desc, nickname asc limit ?, ? 
2022-05-17 16:19:41,953 [http-nio-8081-exec-2] ==> Parameters: 0(Integer), 10(Integer)
2022-05-17 16:19:41,955 [http-nio-8081-exec-2] <==      Total: 5
2022-05-17 16:19:58,075 [http-nio-8081-exec-7] ==>  Preparing: select * from sys_role t 
2022-05-17 16:19:58,076 [http-nio-8081-exec-7] ==> Parameters: 
2022-05-17 16:19:58,077 [http-nio-8081-exec-7] <==      Total: 4
2022-05-17 16:19:58,088 [http-nio-8081-exec-9] ==>  Preparing: select * from sys_user t where t.id = ? 
2022-05-17 16:19:58,089 [http-nio-8081-exec-9] ==> Parameters: 3(Long)
2022-05-17 16:19:58,090 [http-nio-8081-exec-9] <==      Total: 1
2022-05-17 16:19:58,100 [http-nio-8081-exec-8] ==>  Preparing: select * from sys_role r inner join sys_role_user ru on r.id = ru.roleId where ru.userId = ? 
2022-05-17 16:19:58,101 [http-nio-8081-exec-8] ==> Parameters: 3(Long)
2022-05-17 16:19:58,102 [http-nio-8081-exec-8] <==      Total: 1
2022-05-17 16:20:10,900 [http-nio-8081-exec-1] ==>  Preparing: select count(1) from sys_user t 
2022-05-17 16:20:10,901 [http-nio-8081-exec-1] ==> Parameters: 
2022-05-17 16:20:10,903 [http-nio-8081-exec-1] <==      Total: 1
2022-05-17 16:20:10,909 [http-nio-8081-exec-1] ==>  Preparing: select * from sys_user t order by username desc, nickname asc limit ?, ? 
2022-05-17 16:20:10,910 [http-nio-8081-exec-1] ==> Parameters: 0(Integer), 10(Integer)
2022-05-17 16:20:10,913 [http-nio-8081-exec-1] <==      Total: 5
2022-05-17 16:20:14,445 [http-nio-8081-exec-2] ==>  Preparing: select * from sys_role t 
2022-05-17 16:20:14,446 [http-nio-8081-exec-2] ==> Parameters: 
2022-05-17 16:20:14,448 [http-nio-8081-exec-2] <==      Total: 4
2022-05-17 16:20:39,853 [http-nio-8081-exec-7] ==>  Preparing: select * from sys_user t where t.username = ? 
2022-05-17 16:20:39,854 [http-nio-8081-exec-7] ==> Parameters: 嘻嘻(String)
2022-05-17 16:20:39,855 [http-nio-8081-exec-7] <==      Total: 0
2022-05-17 16:20:39,896 [http-nio-8081-exec-7] ==>  Preparing: insert into sys_user(username, password, salt, nickname, headImgUrl, phone, telephone, email, birthday, sex, status, createTime, updateTime) values(?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, now(), now()) 
2022-05-17 16:20:39,912 [http-nio-8081-exec-7] ==> Parameters: 嘻嘻(String), 60477f1e6e435085060ff65999394ad2(String), 8c25b4683eaa8423aa64d7c20f3c2784(String), hh(String), null, 18111507869(String), 18111507867(String), 321@qq.com(String), 2020-07-09 00:00:00.0(Timestamp), 1(Integer), 1(Integer)
2022-05-17 16:20:40,007 [http-nio-8081-exec-7] <==    Updates: 1
2022-05-17 16:20:40,009 [http-nio-8081-exec-7] ==>  Preparing: delete from sys_role_user where userId = ? 
2022-05-17 16:20:40,086 [http-nio-8081-exec-7] ==> Parameters: 6(Long)
2022-05-17 16:20:40,087 [http-nio-8081-exec-7] <==    Updates: 0
2022-05-17 16:20:40,090 [http-nio-8081-exec-7] ==>  Preparing: insert into sys_role_user(roleId, userId) values (?, ?) 
2022-05-17 16:20:40,091 [http-nio-8081-exec-7] ==> Parameters: 2(Long), 6(Long)
2022-05-17 16:20:40,092 [http-nio-8081-exec-7] <==    Updates: 1
2022-05-17 16:20:40,175 [http-nio-8081-exec-7] ==>  Preparing: insert into sys_logs(userId, module, flag, remark, createTime) values(?, ?, ?, ?, now()) 
2022-05-17 16:20:40,176 [http-nio-8081-exec-7] ==> Parameters: 1(Long), 保存用户(String), true(Boolean), null
2022-05-17 16:20:40,215 [http-nio-8081-exec-7] <==    Updates: 1
2022-05-17 16:20:41,570 [http-nio-8081-exec-10] ==>  Preparing: select count(1) from sys_user t 
2022-05-17 16:20:41,571 [http-nio-8081-exec-10] ==> Parameters: 
2022-05-17 16:20:41,573 [http-nio-8081-exec-10] <==      Total: 1
2022-05-17 16:20:41,578 [http-nio-8081-exec-10] ==>  Preparing: select * from sys_user t order by username desc, nickname asc limit ?, ? 
2022-05-17 16:20:41,578 [http-nio-8081-exec-10] ==> Parameters: 0(Integer), 10(Integer)
2022-05-17 16:20:41,580 [http-nio-8081-exec-10] <==      Total: 6
2022-05-17 16:20:44,946 [taskExecutor-4] ==>  Preparing: insert into sys_logs(userId, module, flag, remark, createTime) values(?, ?, ?, ?, now()) 
2022-05-17 16:20:44,947 [taskExecutor-4] ==> Parameters: 1(Long), 退出(String), true(Boolean), null
2022-05-17 16:20:45,010 [taskExecutor-4] <==    Updates: 1
2022-05-17 16:20:57,699 [http-nio-8081-exec-7] ==>  Preparing: select * from sys_user t where t.username = ? 
2022-05-17 16:20:57,699 [http-nio-8081-exec-7] ==> Parameters: 嘻嘻(String)
2022-05-17 16:20:57,700 [http-nio-8081-exec-7] <==      Total: 1
2022-05-17 16:20:57,704 [http-nio-8081-exec-7] ==>  Preparing: insert into sys_logs(userId, module, flag, remark, createTime) values(?, ?, ?, ?, now()) 
2022-05-17 16:20:57,705 [http-nio-8081-exec-7] ==> Parameters: 6(Long), web端登陆(String), true(Boolean), null
2022-05-17 16:20:57,739 [http-nio-8081-exec-7] <==    Updates: 1
2022-05-17 16:20:57,854 [http-nio-8081-exec-10] ==>  Preparing: select distinct p.* from sys_permission p inner join sys_role_permission rp on p.id = rp.permissionId inner join sys_role_user ru on ru.roleId = rp.roleId where ru.userId = ? order by p.sort 
2022-05-17 16:20:57,854 [http-nio-8081-exec-10] ==> Parameters: 6(Long)
2022-05-17 16:20:57,855 [http-nio-8081-exec-10] <==      Total: 9
2022-05-17 16:20:57,885 [http-nio-8081-exec-1] ==>  Preparing: select count(1) from t_notice t left join t_notice_read r on r.noticeId = t.id and r.userId = ? where t.status = 1 and r.userId is null 
2022-05-17 16:20:57,886 [http-nio-8081-exec-1] ==> Parameters: 6(Long)
2022-05-17 16:20:57,887 [http-nio-8081-exec-1] <==      Total: 1
2022-05-17 16:20:57,980 [http-nio-8081-exec-10] ==>  Preparing: select count(1) from t_notice t left join t_notice_read r on r.noticeId = t.id and r.userId = ? where t.status = 1 and r.userId is null 
2022-05-17 16:20:57,980 [http-nio-8081-exec-10] ==> Parameters: 6(Long)
2022-05-17 16:20:57,981 [http-nio-8081-exec-10] <==      Total: 1
2022-05-17 16:20:57,987 [http-nio-8081-exec-5] ==>  Preparing: select * from sys_role r inner join sys_role_user ru on r.id = ru.roleId where ru.userId = ? 
2022-05-17 16:20:57,988 [http-nio-8081-exec-5] ==> Parameters: 6(Long)
2022-05-17 16:20:57,989 [http-nio-8081-exec-5] <==      Total: 1
2022-05-17 16:20:57,993 [http-nio-8081-exec-5] ==>  Preparing: select distinct p.* from sys_permission p inner join sys_role_permission rp on p.id = rp.permissionId inner join sys_role_user ru on ru.roleId = rp.roleId where ru.userId = ? order by p.sort 
2022-05-17 16:20:57,994 [http-nio-8081-exec-5] ==> Parameters: 6(Long)
2022-05-17 16:20:57,995 [http-nio-8081-exec-5] <==      Total: 9
2022-05-17 16:21:00,979 [http-nio-8081-exec-8] ==>  Preparing: select count(1) from tb_owner t 
2022-05-17 16:21:00,981 [http-nio-8081-exec-8] ==> Parameters: 
2022-05-17 16:21:00,985 [http-nio-8081-exec-8] <==      Total: 1
2022-05-17 16:21:00,989 [http-nio-8081-exec-8] ==>  Preparing: select owner_id, owner_name, owner_sex, owner_phone, owner_come_time, owner_id_card from tb_owner limit ?, ? 
2022-05-17 16:21:00,990 [http-nio-8081-exec-8] ==> Parameters: 0(Integer), 10(Integer)
2022-05-17 16:21:00,992 [http-nio-8081-exec-8] <==      Total: 5
2022-05-17 16:21:01,633 [http-nio-8081-exec-7] ==>  Preparing: select count(1) from tb_visitor t 
2022-05-17 16:21:01,634 [http-nio-8081-exec-7] ==> Parameters: 
2022-05-17 16:21:01,714 [http-nio-8081-exec-7] <==      Total: 1
2022-05-17 16:21:01,717 [http-nio-8081-exec-7] ==>  Preparing: select visitor_id, visitor_name, visitor_sex, visitor_phone, visitor_card_no, visitor_come_time from tb_visitor limit ?, ? 
2022-05-17 16:21:01,718 [http-nio-8081-exec-7] ==> Parameters: 0(Integer), 10(Integer)
2022-05-17 16:21:01,719 [http-nio-8081-exec-7] <==      Total: 3
2022-05-17 16:21:09,728 [taskExecutor-5] ==>  Preparing: insert into sys_logs(userId, module, flag, remark, createTime) values(?, ?, ?, ?, now()) 
2022-05-17 16:21:09,728 [taskExecutor-5] ==> Parameters: 6(Long), 退出(String), true(Boolean), null
2022-05-17 16:21:09,868 [taskExecutor-5] <==    Updates: 1
2022-05-17 16:21:11,341 [http-nio-8081-exec-2] ==>  Preparing: select * from sys_user t where t.username = ? 
2022-05-17 16:21:11,342 [http-nio-8081-exec-2] ==> Parameters: admin(String)
2022-05-17 16:21:11,344 [http-nio-8081-exec-2] <==      Total: 1
2022-05-17 16:21:11,347 [http-nio-8081-exec-2] ==>  Preparing: insert into sys_logs(userId, module, flag, remark, createTime) values(?, ?, ?, ?, now()) 
2022-05-17 16:21:11,348 [http-nio-8081-exec-2] ==> Parameters: 1(Long), web端登陆(String), true(Boolean), null
2022-05-17 16:21:11,386 [http-nio-8081-exec-2] <==    Updates: 1
2022-05-17 16:21:11,520 [http-nio-8081-exec-7] ==>  Preparing: select distinct p.* from sys_permission p inner join sys_role_permission rp on p.id = rp.permissionId inner join sys_role_user ru on ru.roleId = rp.roleId where ru.userId = ? order by p.sort 
2022-05-17 16:21:11,520 [http-nio-8081-exec-7] ==> Parameters: 1(Long)
2022-05-17 16:21:11,523 [http-nio-8081-exec-7] <==      Total: 50
2022-05-17 16:21:11,550 [http-nio-8081-exec-8] ==>  Preparing: select count(1) from t_notice t left join t_notice_read r on r.noticeId = t.id and r.userId = ? where t.status = 1 and r.userId is null 
2022-05-17 16:21:11,551 [http-nio-8081-exec-8] ==> Parameters: 1(Long)
2022-05-17 16:21:11,553 [http-nio-8081-exec-8] <==      Total: 1
2022-05-17 16:21:11,673 [http-nio-8081-exec-4] ==>  Preparing: select count(1) from t_notice t left join t_notice_read r on r.noticeId = t.id and r.userId = ? where t.status = 1 and r.userId is null 
2022-05-17 16:21:11,674 [http-nio-8081-exec-4] ==> Parameters: 1(Long)
2022-05-17 16:21:11,675 [http-nio-8081-exec-4] <==      Total: 1
2022-05-17 16:21:11,681 [http-nio-8081-exec-10] ==>  Preparing: select * from sys_role r inner join sys_role_user ru on r.id = ru.roleId where ru.userId = ? 
2022-05-17 16:21:11,681 [http-nio-8081-exec-10] ==> Parameters: 1(Long)
2022-05-17 16:21:11,682 [http-nio-8081-exec-10] <==      Total: 1
2022-05-17 16:21:11,687 [http-nio-8081-exec-10] ==>  Preparing: select distinct p.* from sys_permission p inner join sys_role_permission rp on p.id = rp.permissionId inner join sys_role_user ru on ru.roleId = rp.roleId where ru.userId = ? order by p.sort 
2022-05-17 16:21:11,687 [http-nio-8081-exec-10] ==> Parameters: 1(Long)
2022-05-17 16:21:11,690 [http-nio-8081-exec-10] <==      Total: 50
2022-05-17 16:21:11,698 [http-nio-8081-exec-10] ==>  Preparing: SELECT name,description FROM sys_role sr LEFT JOIN sys_role_user sru ON sr.id=sru.roleId LEFT JOIN sys_user su ON sru.userId=su.id WHERE su.id=? 
2022-05-17 16:21:11,699 [http-nio-8081-exec-10] ==> Parameters: 1(Long)
2022-05-17 16:21:11,700 [http-nio-8081-exec-10] <==      Total: 1
2022-05-17 16:21:20,452 [http-nio-8081-exec-9] ==>  Preparing: select * from sys_permission t order by t.sort 
2022-05-17 16:21:20,452 [http-nio-8081-exec-9] ==> Parameters: 
2022-05-17 16:21:20,454 [http-nio-8081-exec-9] <==      Total: 54
2022-05-17 16:21:26,081 [http-nio-8081-exec-7] ==>  Preparing: select count(1) from sys_role t 
2022-05-17 16:21:26,082 [http-nio-8081-exec-7] ==> Parameters: 
2022-05-17 16:21:26,085 [http-nio-8081-exec-7] <==      Total: 1
2022-05-17 16:21:26,092 [http-nio-8081-exec-7] ==>  Preparing: select * from sys_role t order by updateTime desc limit ?, ? 
2022-05-17 16:21:26,093 [http-nio-8081-exec-7] ==> Parameters: 0(Integer), 10(Integer)
2022-05-17 16:21:26,095 [http-nio-8081-exec-7] <==      Total: 4
2022-05-17 16:21:28,637 [http-nio-8081-exec-2] ==>  Preparing: select * from sys_permission t order by t.sort 
2022-05-17 16:21:28,638 [http-nio-8081-exec-2] ==> Parameters: 
2022-05-17 16:21:28,640 [http-nio-8081-exec-2] <==      Total: 54
2022-05-17 16:22:15,322 [http-nio-8081-exec-8] ==>  Preparing: select * from sys_role t where t.name = ? 
2022-05-17 16:22:15,323 [http-nio-8081-exec-8] ==> Parameters: 艾克(String)
2022-05-17 16:22:15,344 [http-nio-8081-exec-8] <==      Total: 0
2022-05-17 16:22:15,346 [http-nio-8081-exec-8] ==>  Preparing: insert into sys_role(name, description, createTime, updateTime) values(?, ?, now(),now()) 
2022-05-17 16:22:15,347 [http-nio-8081-exec-8] ==> Parameters: 艾克(String), 系统管理员2(String)
2022-05-17 16:22:15,370 [http-nio-8081-exec-8] <==    Updates: 1
2022-05-17 16:22:15,371 [http-nio-8081-exec-8] ==>  Preparing: delete from sys_role_permission where roleId = ? 
2022-05-17 16:22:15,372 [http-nio-8081-exec-8] ==> Parameters: 5(Long)
2022-05-17 16:22:15,373 [http-nio-8081-exec-8] <==    Updates: 0
2022-05-17 16:22:15,374 [http-nio-8081-exec-8] ==>  Preparing: insert into sys_role_permission(roleId, permissionId) values (?, ?) , (?, ?) , (?, ?) , (?, ?) 
2022-05-17 16:22:15,375 [http-nio-8081-exec-8] ==> Parameters: 5(Long), 22(Long), 5(Long), 23(Long), 5(Long), 24(Long), 5(Long), 25(Long)
2022-05-17 16:22:15,376 [http-nio-8081-exec-8] <==    Updates: 4
2022-05-17 16:22:15,427 [http-nio-8081-exec-8] ==>  Preparing: insert into sys_logs(userId, module, flag, remark, createTime) values(?, ?, ?, ?, now()) 
2022-05-17 16:22:15,428 [http-nio-8081-exec-8] ==> Parameters: 1(Long), 保存角色(String), true(Boolean), null
2022-05-17 16:22:15,459 [http-nio-8081-exec-8] <==    Updates: 1
2022-05-17 16:22:16,850 [http-nio-8081-exec-8] ==>  Preparing: select count(1) from sys_role t 
2022-05-17 16:22:16,851 [http-nio-8081-exec-8] ==> Parameters: 
2022-05-17 16:22:16,854 [http-nio-8081-exec-8] <==      Total: 1
2022-05-17 16:22:16,858 [http-nio-8081-exec-8] ==>  Preparing: select * from sys_role t order by updateTime desc limit ?, ? 
2022-05-17 16:22:16,859 [http-nio-8081-exec-8] ==> Parameters: 0(Integer), 10(Integer)
2022-05-17 16:22:16,860 [http-nio-8081-exec-8] <==      Total: 5
2022-05-17 16:22:24,060 [http-nio-8081-exec-6] ==>  Preparing: select count(1) from sys_user t 
2022-05-17 16:22:24,061 [http-nio-8081-exec-6] ==> Parameters: 
2022-05-17 16:22:24,063 [http-nio-8081-exec-6] <==      Total: 1
2022-05-17 16:22:24,071 [http-nio-8081-exec-6] ==>  Preparing: select * from sys_user t order by username desc, nickname asc limit ?, ? 
2022-05-17 16:22:24,072 [http-nio-8081-exec-6] ==> Parameters: 0(Integer), 10(Integer)
2022-05-17 16:22:24,074 [http-nio-8081-exec-6] <==      Total: 6
2022-05-17 16:22:25,041 [http-nio-8081-exec-8] ==>  Preparing: select * from sys_role t 
2022-05-17 16:22:25,042 [http-nio-8081-exec-8] ==> Parameters: 
2022-05-17 16:22:25,043 [http-nio-8081-exec-8] <==      Total: 5
2022-05-17 16:22:29,477 [http-nio-8081-exec-3] ==>  Preparing: select count(1) from file_info t 
2022-05-17 16:22:29,477 [http-nio-8081-exec-3] ==> Parameters: 
2022-05-17 16:22:29,577 [http-nio-8081-exec-3] <==      Total: 1
2022-05-17 16:22:29,584 [http-nio-8081-exec-3] ==>  Preparing: select * from file_info t order by updateTime desc limit ?, ? 
2022-05-17 16:22:29,584 [http-nio-8081-exec-3] ==> Parameters: 0(Integer), 10(Integer)
2022-05-17 16:22:29,586 [http-nio-8081-exec-3] <==      Total: 3
2022-05-17 16:22:42,264 [http-nio-8081-exec-8] ==>  Preparing: select count(1) from t_notice t 
2022-05-17 16:22:42,266 [http-nio-8081-exec-8] ==> Parameters: 
2022-05-17 16:22:42,275 [http-nio-8081-exec-8] <==      Total: 1
2022-05-17 16:22:42,285 [http-nio-8081-exec-8] ==>  Preparing: select * from t_notice t order by updateTime desc, title desc limit ?, ? 
2022-05-17 16:22:42,287 [http-nio-8081-exec-8] ==> Parameters: 0(Integer), 10(Integer)
2022-05-17 16:22:42,290 [http-nio-8081-exec-8] <==      Total: 4
2022-05-17 16:22:54,588 [http-nio-8081-exec-8] ==>  Preparing: select * from t_notice t where t.id = ? 
2022-05-17 16:22:54,589 [http-nio-8081-exec-8] ==> Parameters: 5(Long)
2022-05-17 16:22:54,592 [http-nio-8081-exec-8] <==      Total: 1
2022-05-17 16:22:54,597 [http-nio-8081-exec-8] ==>  Preparing: insert ignore into t_notice_read(noticeId, userId, createTime) values(?, ?, now()) 
2022-05-17 16:22:54,598 [http-nio-8081-exec-8] ==> Parameters: 5(Long), 1(Long)
2022-05-17 16:22:54,641 [http-nio-8081-exec-8] <==    Updates: 1
2022-05-17 16:22:54,647 [http-nio-8081-exec-8] ==>  Preparing: select u.* from t_notice_read r inner join sys_user u on u.id = r.userId where r.noticeId = ? order by r.createTime desc 
2022-05-17 16:22:54,648 [http-nio-8081-exec-8] ==> Parameters: 5(Long)
2022-05-17 16:22:54,649 [http-nio-8081-exec-8] <==      Total: 2
2022-05-17 16:23:03,684 [taskExecutor-6] ==>  Preparing: insert into sys_logs(userId, module, flag, remark, createTime) values(?, ?, ?, ?, now()) 
2022-05-17 16:23:03,685 [taskExecutor-6] ==> Parameters: 1(Long), 退出(String), true(Boolean), null
2022-05-17 16:23:03,831 [taskExecutor-6] <==    Updates: 1
2022-05-17 16:23:06,592 [http-nio-8081-exec-2] ==>  Preparing: select * from sys_user t where t.username = ? 
2022-05-17 16:23:06,593 [http-nio-8081-exec-2] ==> Parameters: muller(String)
2022-05-17 16:23:06,594 [http-nio-8081-exec-2] <==      Total: 1
2022-05-17 16:23:06,597 [http-nio-8081-exec-2] ==>  Preparing: insert into sys_logs(userId, module, flag, remark, createTime) values(?, ?, ?, ?, now()) 
2022-05-17 16:23:06,598 [http-nio-8081-exec-2] ==> Parameters: 5(Long), web端登陆(String), true(Boolean), null
2022-05-17 16:23:06,874 [http-nio-8081-exec-2] <==    Updates: 1
2022-05-17 16:23:06,980 [http-nio-8081-exec-5] ==>  Preparing: select distinct p.* from sys_permission p inner join sys_role_permission rp on p.id = rp.permissionId inner join sys_role_user ru on ru.roleId = rp.roleId where ru.userId = ? order by p.sort 
2022-05-17 16:23:06,981 [http-nio-8081-exec-5] ==> Parameters: 5(Long)
2022-05-17 16:23:06,982 [http-nio-8081-exec-5] <==      Total: 11
2022-05-17 16:23:07,007 [http-nio-8081-exec-8] ==>  Preparing: select count(1) from t_notice t left join t_notice_read r on r.noticeId = t.id and r.userId = ? where t.status = 1 and r.userId is null 
2022-05-17 16:23:07,009 [http-nio-8081-exec-8] ==> Parameters: 5(Long)
2022-05-17 16:23:07,010 [http-nio-8081-exec-8] <==      Total: 1
2022-05-17 16:23:07,094 [http-nio-8081-exec-8] ==>  Preparing: select count(1) from t_notice t left join t_notice_read r on r.noticeId = t.id and r.userId = ? where t.status = 1 and r.userId is null 
2022-05-17 16:23:07,095 [http-nio-8081-exec-8] ==> Parameters: 5(Long)
2022-05-17 16:23:07,096 [http-nio-8081-exec-8] <==      Total: 1
2022-05-17 16:23:07,104 [http-nio-8081-exec-3] ==>  Preparing: select * from sys_role r inner join sys_role_user ru on r.id = ru.roleId where ru.userId = ? 
2022-05-17 16:23:07,105 [http-nio-8081-exec-3] ==> Parameters: 5(Long)
2022-05-17 16:23:07,107 [http-nio-8081-exec-3] <==      Total: 1
2022-05-17 16:23:07,112 [http-nio-8081-exec-3] ==>  Preparing: select distinct p.* from sys_permission p inner join sys_role_permission rp on p.id = rp.permissionId inner join sys_role_user ru on ru.roleId = rp.roleId where ru.userId = ? order by p.sort 
2022-05-17 16:23:07,113 [http-nio-8081-exec-3] ==> Parameters: 5(Long)
2022-05-17 16:23:07,115 [http-nio-8081-exec-3] <==      Total: 11
2022-05-17 16:23:10,017 [http-nio-8081-exec-4] ==>  Preparing: select count(1) from t_notice t left join t_notice_read r on r.noticeId = t.id and r.userId = ? WHERE t.status = 1 
2022-05-17 16:23:10,019 [http-nio-8081-exec-4] ==> Parameters: 5(Long)
2022-05-17 16:23:10,021 [http-nio-8081-exec-4] <==      Total: 1
2022-05-17 16:23:10,029 [http-nio-8081-exec-4] ==>  Preparing: select t.*,r.createTime readTime, if(r.createTime is null, 0, 1) isRead,r.userId from t_notice t left join t_notice_read r on r.noticeId = t.id and r.userId = ? WHERE t.status = 1 order by updateTime desc limit ?, ? 
2022-05-17 16:23:10,030 [http-nio-8081-exec-4] ==> Parameters: 5(Long), 0(Integer), 10(Integer)
2022-05-17 16:23:10,032 [http-nio-8081-exec-4] <==      Total: 4
2022-05-17 16:23:13,291 [http-nio-8081-exec-1] ==>  Preparing: select * from t_notice t where t.id = ? 
2022-05-17 16:23:13,292 [http-nio-8081-exec-1] ==> Parameters: 5(Long)
2022-05-17 16:23:13,293 [http-nio-8081-exec-1] <==      Total: 1
2022-05-17 16:23:13,298 [http-nio-8081-exec-1] ==>  Preparing: insert ignore into t_notice_read(noticeId, userId, createTime) values(?, ?, now()) 
2022-05-17 16:23:13,300 [http-nio-8081-exec-1] ==> Parameters: 5(Long), 5(Long)
2022-05-17 16:23:13,302 [http-nio-8081-exec-1] <==    Updates: 0
2022-05-17 16:23:13,307 [http-nio-8081-exec-1] ==>  Preparing: select u.* from t_notice_read r inner join sys_user u on u.id = r.userId where r.noticeId = ? order by r.createTime desc 
2022-05-17 16:23:13,307 [http-nio-8081-exec-1] ==> Parameters: 5(Long)
2022-05-17 16:23:13,309 [http-nio-8081-exec-1] <==      Total: 2
2022-05-17 16:23:18,127 [taskExecutor-7] ==>  Preparing: insert into sys_logs(userId, module, flag, remark, createTime) values(?, ?, ?, ?, now()) 
2022-05-17 16:23:18,128 [taskExecutor-7] ==> Parameters: 5(Long), 退出(String), true(Boolean), null
2022-05-17 16:23:18,163 [taskExecutor-7] <==    Updates: 1
2022-05-17 16:23:20,583 [http-nio-8081-exec-5] ==>  Preparing: select * from sys_user t where t.username = ? 
2022-05-17 16:23:20,583 [http-nio-8081-exec-5] ==> Parameters: admin(String)
2022-05-17 16:23:20,584 [http-nio-8081-exec-5] <==      Total: 1
2022-05-17 16:23:20,587 [http-nio-8081-exec-5] ==>  Preparing: insert into sys_logs(userId, module, flag, remark, createTime) values(?, ?, ?, ?, now()) 
2022-05-17 16:23:20,587 [http-nio-8081-exec-5] ==> Parameters: 1(Long), web端登陆(String), true(Boolean), null
2022-05-17 16:23:21,826 [http-nio-8081-exec-5] <==    Updates: 1
2022-05-17 16:23:21,969 [http-nio-8081-exec-6] ==>  Preparing: select distinct p.* from sys_permission p inner join sys_role_permission rp on p.id = rp.permissionId inner join sys_role_user ru on ru.roleId = rp.roleId where ru.userId = ? order by p.sort 
2022-05-17 16:23:21,969 [http-nio-8081-exec-6] ==> Parameters: 1(Long)
2022-05-17 16:23:21,971 [http-nio-8081-exec-6] <==      Total: 50
2022-05-17 16:23:22,000 [http-nio-8081-exec-3] ==>  Preparing: select count(1) from t_notice t left join t_notice_read r on r.noticeId = t.id and r.userId = ? where t.status = 1 and r.userId is null 
2022-05-17 16:23:22,000 [http-nio-8081-exec-3] ==> Parameters: 1(Long)
2022-05-17 16:23:22,003 [http-nio-8081-exec-3] <==      Total: 1
2022-05-17 16:23:22,086 [http-nio-8081-exec-4] ==>  Preparing: select count(1) from t_notice t left join t_notice_read r on r.noticeId = t.id and r.userId = ? where t.status = 1 and r.userId is null 
2022-05-17 16:23:22,087 [http-nio-8081-exec-4] ==> Parameters: 1(Long)
2022-05-17 16:23:22,088 [http-nio-8081-exec-4] <==      Total: 1
2022-05-17 16:23:22,094 [http-nio-8081-exec-5] ==>  Preparing: select * from sys_role r inner join sys_role_user ru on r.id = ru.roleId where ru.userId = ? 
2022-05-17 16:23:22,094 [http-nio-8081-exec-5] ==> Parameters: 1(Long)
2022-05-17 16:23:22,095 [http-nio-8081-exec-5] <==      Total: 1
2022-05-17 16:23:22,098 [http-nio-8081-exec-5] ==>  Preparing: select distinct p.* from sys_permission p inner join sys_role_permission rp on p.id = rp.permissionId inner join sys_role_user ru on ru.roleId = rp.roleId where ru.userId = ? order by p.sort 
2022-05-17 16:23:22,099 [http-nio-8081-exec-5] ==> Parameters: 1(Long)
2022-05-17 16:23:22,100 [http-nio-8081-exec-5] <==      Total: 50
2022-05-17 16:23:22,105 [http-nio-8081-exec-5] ==>  Preparing: SELECT name,description FROM sys_role sr LEFT JOIN sys_role_user sru ON sr.id=sru.roleId LEFT JOIN sys_user su ON sru.userId=su.id WHERE su.id=? 
2022-05-17 16:23:22,106 [http-nio-8081-exec-5] ==> Parameters: 1(Long)
2022-05-17 16:23:22,107 [http-nio-8081-exec-5] <==      Total: 1
2022-05-17 16:23:26,747 [http-nio-8081-exec-7] ==>  Preparing: select count(1) from sys_logs t left join sys_user u on u.id = t.userId 
2022-05-17 16:23:26,749 [http-nio-8081-exec-7] ==> Parameters: 
2022-05-17 16:23:26,751 [http-nio-8081-exec-7] <==      Total: 1
2022-05-17 16:23:26,757 [http-nio-8081-exec-7] ==>  Preparing: select t.*, u.username, u.nickname from sys_logs t left join sys_user u on u.id = t.userId order by createTime desc limit ?, ? 
2022-05-17 16:23:26,758 [http-nio-8081-exec-7] ==> Parameters: 0(Integer), 10(Integer)
2022-05-17 16:23:26,761 [http-nio-8081-exec-7] <==      Total: 10
2022-05-17 16:23:35,265 [http-nio-8081-exec-3] ==>  Preparing: select owner_id,owner_name from tb_owner 
2022-05-17 16:23:35,265 [http-nio-8081-exec-3] ==> Parameters: 
2022-05-17 16:23:35,267 [http-nio-8081-exec-3] <==      Total: 5
2022-05-17 16:23:35,315 [http-nio-8081-exec-5] ==>  Preparing: select count(1) from tb_house t 
2022-05-17 16:23:35,316 [http-nio-8081-exec-5] ==> Parameters: 
2022-05-17 16:23:35,319 [http-nio-8081-exec-5] <==      Total: 1
2022-05-17 16:23:35,325 [http-nio-8081-exec-5] ==>  Preparing: select house_no, owner_id, house_type, house_area,build_name,build_id,owner_name from tb_house limit ?, ? 
2022-05-17 16:23:35,326 [http-nio-8081-exec-5] ==> Parameters: 0(Integer), 10(Integer)
2022-05-17 16:23:35,329 [http-nio-8081-exec-5] <==      Total: 10
2022-05-17 16:23:50,209 [http-nio-8081-exec-2] ==>  Preparing: select build_name,id from tb_build 
2022-05-17 16:23:50,209 [http-nio-8081-exec-2] ==> Parameters: 
2022-05-17 16:23:50,211 [http-nio-8081-exec-2] <==      Total: 13
2022-05-17 16:23:50,228 [http-nio-8081-exec-5] ==>  Preparing: select house_no, owner_id, house_type, house_area,build_name,build_id,owner_name from tb_house where house_no = ? 
2022-05-17 16:23:50,229 [http-nio-8081-exec-5] ==> Parameters: 22805(String)
2022-05-17 16:23:50,231 [http-nio-8081-exec-5] <==      Total: 1
2022-05-17 16:23:54,120 [http-nio-8081-exec-6] ==>  Preparing: update tb_house SET house_type = ?, house_area = ?, build_name = ? where house_no = ? 
2022-05-17 16:23:54,186 [http-nio-8081-exec-6] ==> Parameters: 空置(String), 90(String), 齐云楼(String), 22805(String)
2022-05-17 16:23:54,294 [http-nio-8081-exec-6] <==    Updates: 1
2022-05-17 16:23:55,619 [http-nio-8081-exec-10] ==>  Preparing: select owner_id,owner_name from tb_owner 
2022-05-17 16:23:55,620 [http-nio-8081-exec-10] ==> Parameters: 
2022-05-17 16:23:55,621 [http-nio-8081-exec-10] <==      Total: 5
2022-05-17 16:23:55,658 [http-nio-8081-exec-2] ==>  Preparing: select count(1) from tb_house t 
2022-05-17 16:23:55,658 [http-nio-8081-exec-2] ==> Parameters: 
2022-05-17 16:23:55,685 [http-nio-8081-exec-2] <==      Total: 1
2022-05-17 16:23:55,689 [http-nio-8081-exec-2] ==>  Preparing: select house_no, owner_id, house_type, house_area,build_name,build_id,owner_name from tb_house limit ?, ? 
2022-05-17 16:23:55,689 [http-nio-8081-exec-2] ==> Parameters: 0(Integer), 10(Integer)
2022-05-17 16:23:55,691 [http-nio-8081-exec-2] <==      Total: 10
2022-05-17 16:23:59,941 [http-nio-8081-exec-7] ==>  Preparing: delete from tb_house where house_no = ? 
2022-05-17 16:23:59,942 [http-nio-8081-exec-7] ==> Parameters: 23903(String)
2022-05-17 16:24:00,043 [http-nio-8081-exec-7] <==    Updates: 1
2022-05-17 16:24:00,058 [http-nio-8081-exec-10] ==>  Preparing: select count(1) from tb_house t 
2022-05-17 16:24:00,059 [http-nio-8081-exec-10] ==> Parameters: 
2022-05-17 16:24:00,060 [http-nio-8081-exec-10] <==      Total: 1
2022-05-17 16:24:00,064 [http-nio-8081-exec-10] ==>  Preparing: select house_no, owner_id, house_type, house_area,build_name,build_id,owner_name from tb_house limit ?, ? 
2022-05-17 16:24:00,065 [http-nio-8081-exec-10] ==> Parameters: 0(Integer), 10(Integer)
2022-05-17 16:24:00,065 [http-nio-8081-exec-10] <==      Total: 9
2022-05-17 16:24:01,494 [http-nio-8081-exec-7] ==>  Preparing: select build_name,id from tb_build 
2022-05-17 16:24:01,495 [http-nio-8081-exec-7] ==> Parameters: 
2022-05-17 16:24:01,496 [http-nio-8081-exec-7] <==      Total: 13
2022-05-17 16:24:03,358 [http-nio-8081-exec-6] ==>  Preparing: select owner_id,owner_name from tb_owner 
2022-05-17 16:24:03,358 [http-nio-8081-exec-6] ==> Parameters: 
2022-05-17 16:24:03,359 [http-nio-8081-exec-6] <==      Total: 5
2022-05-17 16:24:03,390 [http-nio-8081-exec-10] ==>  Preparing: select count(1) from tb_house t 
2022-05-17 16:24:03,391 [http-nio-8081-exec-10] ==> Parameters: 
2022-05-17 16:24:03,393 [http-nio-8081-exec-10] <==      Total: 1
2022-05-17 16:24:03,399 [http-nio-8081-exec-10] ==>  Preparing: select house_no, owner_id, house_type, house_area,build_name,build_id,owner_name from tb_house limit ?, ? 
2022-05-17 16:24:03,400 [http-nio-8081-exec-10] ==> Parameters: 0(Integer), 10(Integer)
2022-05-17 16:24:03,403 [http-nio-8081-exec-10] <==      Total: 9
2022-05-17 16:24:26,823 [http-nio-8081-exec-2] ==>  Preparing: update tb_house SET owner_id = ?, owner_name = ? where house_no = ? 
2022-05-17 16:24:26,823 [http-nio-8081-exec-2] ==> Parameters: 4(Integer), 赵龙天(String), 22805(String)
2022-05-17 16:24:27,037 [http-nio-8081-exec-2] <==    Updates: 1
2022-05-17 16:24:28,252 [http-nio-8081-exec-6] ==>  Preparing: select count(1) from tb_house t 
2022-05-17 16:24:28,253 [http-nio-8081-exec-6] ==> Parameters: 
2022-05-17 16:24:28,254 [http-nio-8081-exec-6] <==      Total: 1
2022-05-17 16:24:28,257 [http-nio-8081-exec-6] ==>  Preparing: select house_no, owner_id, house_type, house_area,build_name,build_id,owner_name from tb_house limit ?, ? 
2022-05-17 16:24:28,258 [http-nio-8081-exec-6] ==> Parameters: 0(Integer), 10(Integer)
2022-05-17 16:24:28,259 [http-nio-8081-exec-6] <==      Total: 9
2022-05-17 16:24:32,714 [http-nio-8081-exec-10] ==>  Preparing: select count(1) from tb_repair t 
2022-05-17 16:24:32,715 [http-nio-8081-exec-10] ==> Parameters: 
2022-05-17 16:24:32,840 [http-nio-8081-exec-10] <==      Total: 1
2022-05-17 16:24:32,844 [http-nio-8081-exec-10] ==>  Preparing: select repair_id, repair_time, repair_reson, repair_people_name, repair_state, finish_time,house_no,phone_num from tb_repair limit ?, ? 
2022-05-17 16:24:32,845 [http-nio-8081-exec-10] ==> Parameters: 0(Integer), 10(Integer)
2022-05-17 16:24:32,846 [http-nio-8081-exec-10] <==      Total: 3
2022-05-17 16:24:37,244 [http-nio-8081-exec-8] ==>  Preparing: select repair_id, repair_time, repair_reson, repair_people_name, repair_state, finish_time,house_no,phone_num from tb_repair where repair_id = ? 
2022-05-17 16:24:37,244 [http-nio-8081-exec-8] ==> Parameters: 2(Integer)
2022-05-17 16:24:37,245 [http-nio-8081-exec-8] <==      Total: 1
2022-05-17 16:24:44,631 [http-nio-8081-exec-9] ==>  Preparing: update tb_repair SET repair_reson = ?, repair_people_name = ?, repair_state = ?, finish_time = ?, house_no = ?, phone_num = ? where repair_id = ? 
2022-05-17 16:24:44,632 [http-nio-8081-exec-9] ==> Parameters: 马桶坏了(String), 小虎(String), 1(Integer), 2022-05-17 16:24:44(String), 2401(String), 13547454191(String), 2(Integer)
2022-05-17 16:24:44,829 [http-nio-8081-exec-9] <==    Updates: 1
2022-05-17 16:24:46,172 [http-nio-8081-exec-9] ==>  Preparing: select count(1) from tb_repair t 
2022-05-17 16:24:46,173 [http-nio-8081-exec-9] ==> Parameters: 
2022-05-17 16:24:46,176 [http-nio-8081-exec-9] <==      Total: 1
2022-05-17 16:24:46,179 [http-nio-8081-exec-9] ==>  Preparing: select repair_id, repair_time, repair_reson, repair_people_name, repair_state, finish_time,house_no,phone_num from tb_repair limit ?, ? 
2022-05-17 16:24:46,180 [http-nio-8081-exec-9] ==> Parameters: 0(Integer), 10(Integer)
2022-05-17 16:24:46,182 [http-nio-8081-exec-9] <==      Total: 3
2022-05-17 16:24:49,713 [http-nio-8081-exec-6] ==>  Preparing: select count(1) from tb_build t 
2022-05-17 16:24:49,713 [http-nio-8081-exec-6] ==> Parameters: 
2022-05-17 16:24:49,715 [http-nio-8081-exec-6] <==      Total: 1
2022-05-17 16:24:49,722 [http-nio-8081-exec-6] ==>  Preparing: select id, build_name, build_area, build_floor from tb_build limit ?, ? 
2022-05-17 16:24:49,724 [http-nio-8081-exec-6] ==> Parameters: 0(Integer), 10(Integer)
2022-05-17 16:24:49,726 [http-nio-8081-exec-6] <==      Total: 10
2022-05-17 16:24:54,682 [taskExecutor-8] ==>  Preparing: insert into sys_logs(userId, module, flag, remark, createTime) values(?, ?, ?, ?, now()) 
2022-05-17 16:24:54,683 [taskExecutor-8] ==> Parameters: 1(Long), 退出(String), true(Boolean), null
2022-05-17 16:24:54,763 [taskExecutor-8] <==    Updates: 1
2022-05-17 16:24:58,045 [http-nio-8081-exec-9] ==>  Preparing: select * from sys_user t where t.username = ? 
2022-05-17 16:24:58,046 [http-nio-8081-exec-9] ==> Parameters: 小虎(String)
2022-05-17 16:24:58,047 [http-nio-8081-exec-9] <==      Total: 1
2022-05-17 16:24:58,050 [http-nio-8081-exec-9] ==>  Preparing: insert into sys_logs(userId, module, flag, remark, createTime) values(?, ?, ?, ?, now()) 
2022-05-17 16:24:58,051 [http-nio-8081-exec-9] ==> Parameters: 3(Long), web端登陆(String), true(Boolean), null
2022-05-17 16:24:58,145 [http-nio-8081-exec-9] <==    Updates: 1
2022-05-17 16:24:58,254 [http-nio-8081-exec-6] ==>  Preparing: select distinct p.* from sys_permission p inner join sys_role_permission rp on p.id = rp.permissionId inner join sys_role_user ru on ru.roleId = rp.roleId where ru.userId = ? order by p.sort 
2022-05-17 16:24:58,255 [http-nio-8081-exec-6] ==> Parameters: 3(Long)
2022-05-17 16:24:58,257 [http-nio-8081-exec-6] <==      Total: 14
2022-05-17 16:24:58,285 [http-nio-8081-exec-2] ==>  Preparing: select count(1) from t_notice t left join t_notice_read r on r.noticeId = t.id and r.userId = ? where t.status = 1 and r.userId is null 
2022-05-17 16:24:58,286 [http-nio-8081-exec-2] ==> Parameters: 3(Long)
2022-05-17 16:24:58,287 [http-nio-8081-exec-2] <==      Total: 1
2022-05-17 16:24:58,391 [http-nio-8081-exec-10] ==>  Preparing: select count(1) from t_notice t left join t_notice_read r on r.noticeId = t.id and r.userId = ? where t.status = 1 and r.userId is null 
2022-05-17 16:24:58,392 [http-nio-8081-exec-10] ==> Parameters: 3(Long)
2022-05-17 16:24:58,394 [http-nio-8081-exec-10] <==      Total: 1
2022-05-17 16:24:58,403 [http-nio-8081-exec-9] ==>  Preparing: select * from sys_role r inner join sys_role_user ru on r.id = ru.roleId where ru.userId = ? 
2022-05-17 16:24:58,404 [http-nio-8081-exec-9] ==> Parameters: 3(Long)
2022-05-17 16:24:58,405 [http-nio-8081-exec-9] <==      Total: 1
2022-05-17 16:24:58,407 [http-nio-8081-exec-9] ==>  Preparing: select distinct p.* from sys_permission p inner join sys_role_permission rp on p.id = rp.permissionId inner join sys_role_user ru on ru.roleId = rp.roleId where ru.userId = ? order by p.sort 
2022-05-17 16:24:58,408 [http-nio-8081-exec-9] ==> Parameters: 3(Long)
2022-05-17 16:24:58,410 [http-nio-8081-exec-9] <==      Total: 14
2022-05-17 16:24:59,626 [http-nio-8081-exec-10] ==>  Preparing: select count(1) from tb_car t 
2022-05-17 16:24:59,626 [http-nio-8081-exec-10] ==> Parameters: 
2022-05-17 16:24:59,670 [http-nio-8081-exec-10] <==      Total: 1
2022-05-17 16:24:59,674 [http-nio-8081-exec-10] ==>  Preparing: select car_id, car_num, park_no, car_flag, car_type, car_color,car_owner,car_owner_phone from tb_car limit ?, ? 
2022-05-17 16:24:59,674 [http-nio-8081-exec-10] ==> Parameters: 0(Integer), 10(Integer)
2022-05-17 16:24:59,675 [http-nio-8081-exec-10] <==      Total: 3
2022-05-17 16:25:14,841 [http-nio-8081-exec-4] ==>  Preparing: select count(1) from tb_car t WHERE car_num = ? 
2022-05-17 16:25:14,844 [http-nio-8081-exec-4] ==> Parameters: 川A(String)
2022-05-17 16:25:14,845 [http-nio-8081-exec-4] <==      Total: 1
2022-05-17 16:25:15,908 [http-nio-8081-exec-5] ==>  Preparing: select count(1) from tb_car t WHERE car_num = ? 
2022-05-17 16:25:15,909 [http-nio-8081-exec-5] ==> Parameters: 川A(String)
2022-05-17 16:25:15,910 [http-nio-8081-exec-5] <==      Total: 1
2022-05-17 16:25:19,913 [http-nio-8081-exec-6] ==>  Preparing: select count(1) from tb_car t 
2022-05-17 16:25:19,913 [http-nio-8081-exec-6] ==> Parameters: 
2022-05-17 16:25:19,915 [http-nio-8081-exec-6] <==      Total: 1
2022-05-17 16:25:19,918 [http-nio-8081-exec-6] ==>  Preparing: select car_id, car_num, park_no, car_flag, car_type, car_color,car_owner,car_owner_phone from tb_car limit ?, ? 
2022-05-17 16:25:19,918 [http-nio-8081-exec-6] ==> Parameters: 0(Integer), 10(Integer)
2022-05-17 16:25:19,919 [http-nio-8081-exec-6] <==      Total: 3
