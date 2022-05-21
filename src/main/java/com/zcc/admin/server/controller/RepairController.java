package com.zcc.admin.server.controller;

import com.github.pagehelper.PageHelper;
import com.zcc.admin.server.common.BaseResponse;
import com.zcc.admin.server.common.ResponseBuilder;
import com.zcc.admin.server.constants.HttpConstans;
import com.zcc.admin.server.dao.RepairMapper;
import com.zcc.admin.server.model.Repair;
import com.zcc.admin.server.page.table.PageTableHandler;
import com.zcc.admin.server.page.table.PageTableRequest;
import com.zcc.admin.server.page.table.PageTableResponse;
import com.zcc.admin.server.service.RepairService;
import org.apache.shiro.authz.annotation.RequiresPermissions;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;

import java.util.List;
import java.util.Objects;

/**
 * @ClassName RepairController
 * @Description 报修管理
 * @Author superlewy
 */
@RestController
@RequestMapping("/repair")
public class RepairController {

    @Autowired
    private RepairService repairService;

    @Autowired
    private RepairMapper repairMapper;

    /**
     * 根据ID查询保修单
     *
     * @param repairId
     * @return
     */
    @RequiresPermissions("repair:query")
    @GetMapping("/selectRepair")
    public BaseResponse selectRepair(Integer repairId) {
        ResponseBuilder custom = ResponseBuilder.custom();
        Repair repair = new Repair();
        try {
            repair = repairService.selectByPrimaryKey(repairId);
            if (repair != null) {
                custom.data(repair).success(HttpConstans.SUCCESS, HttpConstans.SUCCESS_CODE);
            } else {
                custom.failed(HttpConstans.FAIL, HttpConstans.ERROR_CODE);
            }
        } catch (Exception e) {
            custom.failed(HttpConstans.FAIL, HttpConstans.EXCEPTION_CODE);
        }
        return custom.build();
    }

    /**
     * 添加保修单
     *
     * @param repair
     * @return
     */
    @RequiresPermissions("repair:add")
    @PostMapping("/saveRepair")
    public BaseResponse saveRepair(@RequestBody Repair repair) {
        ResponseBuilder custom = ResponseBuilder.custom();
        try {
            repairService.insertSelective(repair);
            custom.data(repair).success(HttpConstans.SUCCESS, HttpConstans.SUCCESS_CODE);
        } catch (Exception e) {
            custom.failed(e.toString(), HttpConstans.EXCEPTION_CODE);
        }
        return custom.build();
    }

    /**
     * 更新保修单信息
     *
     * @param repair
     * @return
     */
    @RequiresPermissions("repair:add")
    @PostMapping("/updateRepair")
    public BaseResponse updateRepair(@RequestBody Repair repair) {
        ResponseBuilder custom = ResponseBuilder.custom();
        try {
            repairService.updateByPrimaryKeySelective(repair);
            custom.data(repair).success(HttpConstans.SUCCESS, HttpConstans.SUCCESS_CODE);
        } catch (Exception e) {
            custom.failed(HttpConstans.FAIL, HttpConstans.EXCEPTION_CODE);
        }
        return custom.build();
    }

    /**
     * 删除保修单信息
     *
     * @param repairId
     * @return
     */
    @RequiresPermissions("repair:del")
    @DeleteMapping("/deleteRepair")
    public BaseResponse deleteRepair(Integer repairId) {
        ResponseBuilder custom = ResponseBuilder.custom();
        try {
            repairService.deleteByPrimaryKey(repairId);
            custom.success(HttpConstans.SUCCESS, HttpConstans.SUCCESS_CODE);
        } catch (Exception e) {
            custom.failed(HttpConstans.FAIL, HttpConstans.EXCEPTION_CODE);
        }
        return custom.build();
    }

    /**
     * 分页获取保修单列表
     *
     * @param currPage 当前页
     * @param pageSize 每页显示数量
     * @return
     */
    @RequiresPermissions("repair:query")
    @GetMapping("/getRepairList")
    public BaseResponse getRepairList(@RequestParam Integer currPage,
                                      @RequestParam Integer pageSize) {
        ResponseBuilder custom = ResponseBuilder.custom();

        if (Objects.isNull(currPage) || currPage == 0) currPage = 1;
        if (Objects.isNull(pageSize) || pageSize == 0) pageSize = 10;
        //分页
        PageHelper.startPage(currPage, pageSize);
        try {
            List<Repair> repairList = repairMapper.getRepairList();
            Long count = repairMapper.getRepairCount();
            if (count != 0 && repairList != null) {
                custom.data(repairList).currPage(currPage)
                        .pageSize(pageSize).totalCount(count.intValue());
            } else {
                custom.failed(HttpConstans.FAIL, HttpConstans.ERROR_CODE);
            }
        } catch (Exception e) {
            custom.failed(HttpConstans.FAIL, HttpConstans.EXCEPTION_CODE);
        }
        return custom.build();
    }

    /**
     * 多参数分页查询列表
     *
     * @param request
     * @return
     */
    @RequiresPermissions("repair:query")
    @GetMapping("/selectRepairList")
    public PageTableResponse selectRepairList(PageTableRequest request) {
        return new PageTableHandler(new PageTableHandler.CountHandler() {

            @Override
            public int count(PageTableRequest request) {
                return repairMapper.count(request.getParams());
            }
        }, new PageTableHandler.ListHandler() {

            @Override
            public List<Repair> list(PageTableRequest request) {
                return repairMapper.selectRepairList(request.getParams(), request.getOffset(), request.getLimit());
            }
        }).handle(request);
    }
}
