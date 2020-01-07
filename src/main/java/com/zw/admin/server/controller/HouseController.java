package com.zw.admin.server.controller;

import com.github.pagehelper.PageHelper;
import com.zw.admin.server.common.BaseResponse;
import com.zw.admin.server.common.ResponseBuilder;
import com.zw.admin.server.constants.HttpConstans;
import com.zw.admin.server.dao.HouseMapper;
import com.zw.admin.server.model.House;
import com.zw.admin.server.page.table.PageTableHandler;
import com.zw.admin.server.page.table.PageTableRequest;
import com.zw.admin.server.page.table.PageTableResponse;
import com.zw.admin.server.service.HouseService;
import org.apache.shiro.authz.annotation.RequiresPermissions;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;

import java.util.List;
import java.util.Objects;

/**
 * @ClassName HouseController
 * @Description 房屋Controller
 * @Author zhangcc
 * @Date 2019/12/31 17:03
 */

@RestController
@RequestMapping("/house")
public class HouseController {

    @Autowired
    private HouseService houseService;

    @Autowired
    private HouseMapper houseMapper;

    /**
     * 根据ID查询房屋信息
     *
     * @param houseNo
     * @return
     */
    @GetMapping("/selectHouse")
    public BaseResponse selectHouse(String houseNo) {
        ResponseBuilder custom = ResponseBuilder.custom();
        House house = new House();
        try {
            house = houseService.selectByPrimaryKey(houseNo);
            if (house != null) {
                custom.data(house).success(HttpConstans.SUCCESS, HttpConstans.SUCCESS_CODE);
            } else {
                custom.failed(HttpConstans.FAIL, HttpConstans.ERROR_CODE);
            }
        } catch (Exception e) {
            custom.failed(HttpConstans.FAIL, HttpConstans.EXCEPTION_CODE);
        }
        return custom.build();
    }

    /**
     * 添加房屋信息
     *
     * @param house
     * @return
     */
    @RequiresPermissions("house:add")
    @PostMapping("/saveHouse")
    public BaseResponse saveHouse(@RequestBody House house) {
        ResponseBuilder custom = ResponseBuilder.custom();
        try {
            int result = houseService.insertSelective(house);
            if (result != 0) {
                custom.data(house).success(HttpConstans.SUCCESS, HttpConstans.SUCCESS_CODE);
            } else {
                custom.failed(HttpConstans.FAIL, HttpConstans.EXCEPTION_CODE);
            }
        } catch (Exception e) {
            custom.failed(e.toString(), HttpConstans.EXCEPTION_CODE);
        }
        return custom.build();
    }

    /**
     * 更新/修改房屋信息
     *
     * @param house
     * @return
     */
    @RequiresPermissions("house:add")
    @PostMapping("/updateHouse")
    public BaseResponse updateHouse(@RequestBody House house) {
        ResponseBuilder custom = ResponseBuilder.custom();
        try {
            int result = houseService.updateByPrimaryKeySelective(house);
            if (result != 0) {
                custom.data(house).success(HttpConstans.SUCCESS, HttpConstans.SUCCESS_CODE);
            } else {
                custom.failed(HttpConstans.FAIL, HttpConstans.EXCEPTION_CODE);
            }
        } catch (Exception e) {
            custom.failed(HttpConstans.FAIL, HttpConstans.EXCEPTION_CODE);
        }
        return custom.build();
    }

    /**
     * 删除房屋信息
     *
     * @param houseNo
     * @return
     */
    @RequiresPermissions("house:del")
    @DeleteMapping("/deleteHouse")
    public BaseResponse deleteHouse(String houseNo) {
        ResponseBuilder custom = ResponseBuilder.custom();
        try {
            int result = houseService.deleteByPrimaryKey(houseNo);
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
     * 分页获取房屋信息列表
     *
     * @param currPage 当前页
     * @param pageSize 每页显示数量
     * @return
     */
    @RequiresPermissions("house:query")
    @GetMapping("/getHouseList")
    public BaseResponse getHouseList(@RequestParam Integer currPage,
                                     @RequestParam Integer pageSize) {
        ResponseBuilder custom = ResponseBuilder.custom();

        if (Objects.isNull(currPage) || currPage == 0) currPage = 1;
        if (Objects.isNull(pageSize) || pageSize == 0) pageSize = 10;
        //分页
        PageHelper.startPage(currPage, pageSize);
        try {
            List<House> houseList = houseMapper.getHouseList();
            Long count = houseMapper.getHouseCount();
            if (count != 0 && houseList != null) {
                custom.data(houseList).currPage(currPage)
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
    @RequiresPermissions("house:query")
    @GetMapping("/selectHouseList")
    public PageTableResponse selectHouseList(PageTableRequest request) {
        return new PageTableHandler(new PageTableHandler.CountHandler() {

            @Override
            public int count(PageTableRequest request) {
                return houseMapper.count(request.getParams());
            }
        }, new PageTableHandler.ListHandler() {

            @Override
            public List<House> list(PageTableRequest request) {
                return houseMapper.selectHouse(request.getParams(), request.getOffset(), request.getLimit());
            }
        }).handle(request);
    }
}
