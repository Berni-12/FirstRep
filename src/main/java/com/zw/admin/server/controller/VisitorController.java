package com.zw.admin.server.controller;

import com.github.pagehelper.PageHelper;
import com.zw.admin.server.common.BaseResponse;
import com.zw.admin.server.common.ResponseBuilder;
import com.zw.admin.server.constants.HttpConstans;
import com.zw.admin.server.dao.VisitorMapper;
import com.zw.admin.server.model.Owner;
import com.zw.admin.server.model.Pay;
import com.zw.admin.server.model.Visitor;
import com.zw.admin.server.page.table.PageTableHandler;
import com.zw.admin.server.page.table.PageTableRequest;
import com.zw.admin.server.page.table.PageTableResponse;
import com.zw.admin.server.service.VisitorService;
import org.apache.shiro.authz.annotation.RequiresPermissions;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;

import java.util.List;
import java.util.Objects;

/**
 * @ClassName VisitorController
 * @Description 访客Controller
 * @Author zhangcc
 * @Date 2019/12/29 17:53
 */

@RestController
@RequestMapping("/visitors")
public class VisitorController {

    private static final Logger log = LoggerFactory.getLogger("adminLogger");

    @Autowired
    private VisitorService visitorService;

    @Autowired
    private VisitorMapper visitorMapper;

    /**
     * 根据ID查询访客
     *
     * @param visitorId
     * @return
     */
    @RequiresPermissions("visitor:query")
    @GetMapping("/selectVisitor")
    public BaseResponse selectVisitor(Integer visitorId) {
        ResponseBuilder custom = ResponseBuilder.custom();
        Visitor visitor = new Visitor();
        try {
            visitor = visitorService.selectByPrimaryKey(visitorId);
            if (visitor != null) {
                custom.data(visitor).success(HttpConstans.SUCCESS, HttpConstans.SUCCESS_CODE);
            } else {
                custom.failed(HttpConstans.FAIL, HttpConstans.ERROR_CODE);
            }
        } catch (Exception e) {
            custom.failed(HttpConstans.FAIL, HttpConstans.EXCEPTION_CODE);
        }
        return custom.build();
    }

    /**
     * 添加访客
     *
     * @param visitor
     * @return
     */
    @RequiresPermissions("visitor:add")
    @PostMapping("/saveVisitor")
    public BaseResponse saveVisitor(@RequestBody Visitor visitor) {
        ResponseBuilder custom = ResponseBuilder.custom();
        try {
            visitorService.insertSelective(visitor);
            custom.data(visitor).success(HttpConstans.SUCCESS, HttpConstans.SUCCESS_CODE);
        } catch (Exception e) {
            custom.failed(e.toString(), HttpConstans.EXCEPTION_CODE);
        }
        return custom.build();
    }

    /**
     * 更新访客信息
     *
     * @param visitor
     * @return
     */
    @RequiresPermissions("visitor:add")
    @PostMapping("/updateVisitor")
    public BaseResponse updateVisitor(@RequestBody Visitor visitor) {
        ResponseBuilder custom = ResponseBuilder.custom();
        try {
            visitorService.updateByPrimaryKeySelective(visitor);
            custom.data(visitor).success(HttpConstans.SUCCESS, HttpConstans.SUCCESS_CODE);
        } catch (Exception e) {
            custom.failed(HttpConstans.FAIL, HttpConstans.EXCEPTION_CODE);
        }
        return custom.build();
    }

    /**
     * 删除访客信息
     *
     * @param visitorId
     * @return
     */
    @RequiresPermissions("visitor:del")
    @DeleteMapping("/deleteVisitor")
    public BaseResponse deleteVisitor(Integer visitorId) {
        ResponseBuilder custom = ResponseBuilder.custom();
        try {
            visitorService.deleteByPrimaryKey(visitorId);
            custom.success(HttpConstans.SUCCESS, HttpConstans.SUCCESS_CODE);
        } catch (Exception e) {
            custom.failed(HttpConstans.FAIL, HttpConstans.EXCEPTION_CODE);
        }
        return custom.build();
    }

    /**
     * 分页获取访客列表
     * @param currPage 当前页
     * @param pageSize 每页显示数量
     * @return
     */
    @RequiresPermissions("visitor:query")
    @GetMapping("/getVisitorList")
    public BaseResponse getVisitorList(@RequestParam Integer currPage,
                                   @RequestParam Integer pageSize) {
        ResponseBuilder custom = ResponseBuilder.custom();

        if (Objects.isNull(currPage) || currPage == 0) currPage = 1;
        if (Objects.isNull(pageSize) || pageSize == 0) pageSize = 10;
        //分页
        PageHelper.startPage(currPage, pageSize);
        try {
            List<Visitor> visitorList = visitorMapper.getVisitorList();
            Long count = visitorMapper.getVisitorCount();
            if (count != 0 && visitorList != null) {
                custom.data(visitorList).currPage(currPage)
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
    @RequiresPermissions("visitor:query")
    @GetMapping("/selectVisitorList")
    public PageTableResponse selectOwnerList(PageTableRequest request) {
        return new PageTableHandler(new PageTableHandler.CountHandler() {

            @Override
            public int count(PageTableRequest request) {
                return visitorMapper.count(request.getParams());
            }
        }, new PageTableHandler.ListHandler() {

            @Override
            public List<Visitor> list(PageTableRequest request) {
                return visitorMapper.selectVisitorList(request.getParams(), request.getOffset(), request.getLimit());
            }
        }).handle(request);
    }

}
