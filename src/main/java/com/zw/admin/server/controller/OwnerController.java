package com.zw.admin.server.controller;

import com.github.pagehelper.PageHelper;
import com.zw.admin.server.common.BaseResponse;
import com.zw.admin.server.common.ResponseBuilder;
import com.zw.admin.server.constants.HttpConstans;
import com.zw.admin.server.dao.OwnerMapper;
import com.zw.admin.server.model.Owner;
import com.zw.admin.server.page.table.PageTableHandler;
import com.zw.admin.server.page.table.PageTableRequest;
import com.zw.admin.server.page.table.PageTableResponse;
import com.zw.admin.server.service.OwnerService;
import org.apache.shiro.authz.annotation.RequiresPermissions;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;

import java.util.ArrayList;
import java.util.List;
import java.util.Objects;

/**
 * @ClassName OwnerController
 * @Description 业主controller
 * @Author zhangcc
 * @Date 2019/12/31 15:51
 */
@RestController
@RequestMapping("/owner")
public class OwnerController {

    @Autowired
    private OwnerService ownerService;

    @Autowired
    private OwnerMapper ownerMapper;

    /**
     * 根据ID查询业主
     *
     * @param ownerId
     * @return
     */
    @RequiresPermissions("owner:query")
    @GetMapping("/selectOwner")
    public BaseResponse selectOwner(Integer ownerId) {
        ResponseBuilder custom = ResponseBuilder.custom();
        Owner owner = new Owner();
        try {
            owner = ownerService.selectByPrimaryKey(ownerId);
            if (owner != null) {
                custom.data(owner).success(HttpConstans.SUCCESS, HttpConstans.SUCCESS_CODE);
            } else {
                custom.failed(HttpConstans.FAIL, HttpConstans.ERROR_CODE);
            }
        } catch (Exception e) {
            custom.failed(HttpConstans.FAIL, HttpConstans.EXCEPTION_CODE);
        }
        return custom.build();
    }

    /**
     * 添加业主
     *
     * @param owner
     * @return
     */
    @RequiresPermissions("owner:add")
    @PostMapping("/saveOwner")
    public BaseResponse saveOwner(@RequestBody Owner owner) {
        ResponseBuilder custom = ResponseBuilder.custom();
        try {
            int result = ownerService.insertSelective(owner);
            if (result != 0) {
                custom.data(owner).success(HttpConstans.SUCCESS, HttpConstans.SUCCESS_CODE);
            } else {
                custom.failed(HttpConstans.FAIL, HttpConstans.EXCEPTION_CODE);
            }
        } catch (Exception e) {
            custom.failed(e.toString(), HttpConstans.EXCEPTION_CODE);
        }
        return custom.build();
    }

    /**
     * 更新/修改业主信息
     *
     * @param owner
     * @return
     */
    @RequiresPermissions("owner:add")
    @PostMapping("/updateOwner")
    public BaseResponse updateOwner(@RequestBody Owner owner) {
        ResponseBuilder custom = ResponseBuilder.custom();
        try {
            int result = ownerService.updateByPrimaryKeySelective(owner);
            if (result != 0) {
                custom.data(owner).success(HttpConstans.SUCCESS, HttpConstans.SUCCESS_CODE);
            } else {
                custom.failed(HttpConstans.FAIL, HttpConstans.EXCEPTION_CODE);
            }
        } catch (Exception e) {
            custom.failed(HttpConstans.FAIL, HttpConstans.EXCEPTION_CODE);
        }
        return custom.build();
    }

    /**
     * 删除业主信息
     *
     * @param ownerId
     * @return
     */
    @RequiresPermissions("owner:del")
    @DeleteMapping("/deleteOwner")
    public BaseResponse deleteOwner(Integer ownerId) {
        ResponseBuilder custom = ResponseBuilder.custom();
        try {
            int result = ownerService.deleteByPrimaryKey(ownerId);
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
     * 分页获取业主信息列表
     *
     * @param currPage 当前页
     * @param pageSize 每页显示数量
     * @return
     */
    @RequiresPermissions("owner:query")
    @GetMapping("/getOwnerList")
    public BaseResponse getOwnerList(@RequestParam Integer currPage,
                                     @RequestParam Integer pageSize) {
        ResponseBuilder custom = ResponseBuilder.custom();

        if (Objects.isNull(currPage) || currPage == 0) currPage = 1;
        if (Objects.isNull(pageSize) || pageSize == 0) pageSize = 10;
        //分页
        PageHelper.startPage(currPage, pageSize);
        try {
            List<Owner> ownerList = ownerMapper.getOwnerList();
            Long count = ownerMapper.getOwnerCount();
            if (count != 0 && ownerList != null) {
                custom.data(ownerList).currPage(currPage)
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
    @RequiresPermissions("owner:query")
    @GetMapping("/selectOwnerList")
    public PageTableResponse selectOwnerList(PageTableRequest request) {
        return new PageTableHandler(new PageTableHandler.CountHandler() {

            @Override
            public int count(PageTableRequest request) {
                return ownerMapper.count(request.getParams());
            }
        }, new PageTableHandler.ListHandler() {

            @Override
            public List<Owner> list(PageTableRequest request) {
                return ownerMapper.selectOwnerList(request.getParams(), request.getOffset(), request.getLimit());
            }
        }).handle(request);
    }

    @RequiresPermissions("owner:query")
    @GetMapping("/ownerIdList")
    public BaseResponse ownerIdList() {
        ResponseBuilder custom = ResponseBuilder.custom();
        List<Owner> nameIdList = new ArrayList<>();
        try {
            nameIdList = ownerMapper.nameIdList();
            if (nameIdList != null && nameIdList.size() > 0) {
                custom.data(nameIdList).success(HttpConstans.SUCCESS, HttpConstans.SUCCESS_CODE);
            } else {
                custom.failed(HttpConstans.FAIL, HttpConstans.ERROR_CODE);
            }
        } catch (Exception e) {
            custom.failed(HttpConstans.FAIL, HttpConstans.EXCEPTION_CODE);
        }
        return custom.build();
    }
}
