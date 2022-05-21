package com.zcc.admin.server.controller;

import com.zcc.admin.server.dao.BuildMapper;
import com.zcc.admin.server.model.Build;
import com.zcc.admin.server.page.table.PageTableHandler;
import com.zcc.admin.server.page.table.PageTableRequest;
import com.zcc.admin.server.service.BuildService;
import com.zcc.admin.server.common.BaseResponse;
import com.zcc.admin.server.common.ResponseBuilder;
import com.zcc.admin.server.constants.HttpConstans;
import com.zcc.admin.server.page.table.PageTableResponse;
import org.apache.shiro.authz.annotation.RequiresPermissions;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.multipart.MultipartFile;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

/**
 * @ClassName BuildController
 * @Description 楼栋信息管理
 * @Author superlewy
 */

@RestController
@RequestMapping("/build")
public class BuildController {

    @Autowired
    private BuildMapper buildMapper;

    @Autowired
    private BuildService buildService;

    /**
     * 根据ID查询楼栋信息
     *
     * @param id
     * @return
     */
    @GetMapping("/selectBuild")
    public BaseResponse selectBuild(Integer id) {
        ResponseBuilder custom = ResponseBuilder.custom();
        Build build = new Build();
        try {
            build = buildService.selectByPrimaryKey(id);
            if (build != null) {
                custom.data(build).success(HttpConstans.SUCCESS, HttpConstans.SUCCESS_CODE);
            } else {
                custom.failed(HttpConstans.FAIL, HttpConstans.ERROR_CODE);
            }
        } catch (Exception e) {
            custom.failed(HttpConstans.FAIL, HttpConstans.EXCEPTION_CODE);
        }
        return custom.build();
    }

    /**
     * 添加楼栋信息
     *
     * @param build
     * @return
     */
    @RequiresPermissions("build:add")
    @PostMapping("/saveBuild")
    public BaseResponse saveBuild(@RequestBody Build build) {
        ResponseBuilder custom = ResponseBuilder.custom();
        try {
            int result = buildService.insertSelective(build);
            if (result != 0) {
                custom.data(build).success(HttpConstans.SUCCESS, HttpConstans.SUCCESS_CODE);
            } else {
                custom.failed(HttpConstans.FAIL, HttpConstans.EXCEPTION_CODE);
            }
        } catch (Exception e) {
            custom.failed(e.toString(), HttpConstans.EXCEPTION_CODE);
        }
        return custom.build();
    }

    /**
     * 更新/修改楼栋信息
     *
     * @param build
     * @return
     */
    @RequiresPermissions("build:add")
    @PostMapping("/updateBuild")
    public BaseResponse updateBuild(@RequestBody Build build) {
        ResponseBuilder custom = ResponseBuilder.custom();
        try {
            int result = buildService.updateByPrimaryKeySelective(build);
            if (result != 0) {
                custom.data(build).success(HttpConstans.SUCCESS, HttpConstans.SUCCESS_CODE);
            } else {
                custom.failed(HttpConstans.FAIL, HttpConstans.EXCEPTION_CODE);
            }
        } catch (Exception e) {
            custom.failed(HttpConstans.FAIL, HttpConstans.EXCEPTION_CODE);
        }
        return custom.build();
    }

    /**
     * 删除楼栋信息
     *
     * @param id
     * @return
     */
    @RequiresPermissions("build:del")
    @DeleteMapping("/deleteBuild")
    public BaseResponse deleteBuild(Integer id) {
        ResponseBuilder custom = ResponseBuilder.custom();
        try {
            int result = buildService.deleteByPrimaryKey(id);
            if (result != 0) {
                custom.success(HttpConstans.SUCCESS, HttpConstans.SUCCESS_CODE);
            } else {
                custom.failed(HttpConstans.FAIL, HttpConstans.EXCEPTION_CODE);
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
    @RequiresPermissions("build:query")
    @GetMapping("/selectBuildList")
    public PageTableResponse selectBuildList(PageTableRequest request) {
        return new PageTableHandler(new PageTableHandler.CountHandler() {

            @Override
            public int count(PageTableRequest request) {
                return buildMapper.count(request.getParams());
            }
        }, new PageTableHandler.ListHandler() {

            @Override
            public List<Build> list(PageTableRequest request) {
                return buildMapper.selectBuild(request.getParams(), request.getOffset(), request.getLimit());
            }
        }).handle(request);
    }

    /**
     * 导入楼栋信息
     *
     * @param file
     * @return
     */
    @RequiresPermissions("build:add")
    @PostMapping("/excelBuild")
    public BaseResponse excelBuild(MultipartFile file) throws IOException {
        ResponseBuilder custom = ResponseBuilder.custom();
        try {
            String result = buildService.excelBuild(file);
            if (result.equals("0")) {
                custom.success(HttpConstans.SUCCESS, HttpConstans.SUCCESS_CODE);
            } else {
                custom.failed(HttpConstans.FAIL, HttpConstans.EXCEPTION_CODE);
            }
        } catch (Exception e) {
            custom.failed(HttpConstans.FAIL, HttpConstans.EXCEPTION_CODE);
        }
        return custom.build();
    }

    @GetMapping("/buildNameList")
    public BaseResponse buildNameList() {
        ResponseBuilder custom = ResponseBuilder.custom();
       List<String> buildNameList=new ArrayList<>();
        try {
            buildNameList = buildMapper.buildNameList();
            if (buildNameList != null && buildNameList.size()>0) {
                custom.data(buildNameList).success(HttpConstans.SUCCESS, HttpConstans.SUCCESS_CODE);
            } else {
                custom.failed(HttpConstans.FAIL, HttpConstans.ERROR_CODE);
            }
        } catch (Exception e) {
            custom.failed(HttpConstans.FAIL, HttpConstans.EXCEPTION_CODE);
        }
        return custom.build();
    }

}
