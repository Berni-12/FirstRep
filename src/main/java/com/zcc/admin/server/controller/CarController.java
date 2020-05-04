package com.zcc.admin.server.controller;

import com.github.pagehelper.PageHelper;
import com.zcc.admin.server.service.CarService;
import com.zcc.admin.server.common.BaseResponse;
import com.zcc.admin.server.common.ResponseBuilder;
import com.zcc.admin.server.constants.HttpConstans;
import com.zcc.admin.server.dao.CarMapper;
import com.zcc.admin.server.model.Car;
import com.zcc.admin.server.page.table.PageTableHandler;
import com.zcc.admin.server.page.table.PageTableRequest;
import com.zcc.admin.server.page.table.PageTableResponse;
import org.apache.shiro.authz.annotation.RequiresPermissions;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;

import java.util.List;
import java.util.Objects;

/**
 * @ClassName CarController
 * @Description 车辆controller
 * @Author zhangcc
 * @Date 2019/12/31 16:32
 */

@RestController
@RequestMapping("/car")
public class CarController {

    @Autowired
    private CarService carService;
    @Autowired
    private CarMapper carMapper;

    /**
     * 根据ID查询车辆信息
     *
     * @param carId
     * @return
     */
    @RequiresPermissions("car:query")
    @GetMapping("/selectCar")
    public BaseResponse selectCar(Integer carId) {
        ResponseBuilder custom = ResponseBuilder.custom();
        Car car = new Car();
        try {
            car = carService.selectByPrimaryKey(carId);
            if (car != null) {
                custom.data(car).success(HttpConstans.SUCCESS, HttpConstans.SUCCESS_CODE);
            } else {
                custom.failed(HttpConstans.FAIL, HttpConstans.ERROR_CODE);
            }
        } catch (Exception e) {
            custom.failed(HttpConstans.FAIL, HttpConstans.EXCEPTION_CODE);
        }
        return custom.build();
    }

    /**
     * 添加车辆信息
     *
     * @param car
     * @return
     */
    @RequiresPermissions("car:add")
    @PostMapping("/saveCar")
    public BaseResponse saveCar(@RequestBody Car car) {
        ResponseBuilder custom = ResponseBuilder.custom();
        try {
            int result = carService.insertSelective(car);
            if (result != 0) {
                custom.data(car).success(HttpConstans.SUCCESS, HttpConstans.SUCCESS_CODE);
            } else {
                custom.failed(HttpConstans.FAIL, HttpConstans.EXCEPTION_CODE);
            }
        } catch (Exception e) {
            custom.failed(e.toString(), HttpConstans.EXCEPTION_CODE);
        }
        return custom.build();
    }

    /**
     * 更新/修改车辆信息
     *
     * @param car
     * @return
     */
    @RequiresPermissions("car:add")
    @PostMapping("/updateCar")
    public BaseResponse updateCar(@RequestBody Car car) {
        ResponseBuilder custom = ResponseBuilder.custom();
        try {
            int result = carService.updateByPrimaryKeySelective(car);
            if (result != 0) {
                custom.data(car).success(HttpConstans.SUCCESS, HttpConstans.SUCCESS_CODE);
            } else {
                custom.failed(HttpConstans.FAIL, HttpConstans.EXCEPTION_CODE);
            }
        } catch (Exception e) {
            custom.failed(HttpConstans.FAIL, HttpConstans.EXCEPTION_CODE);
        }
        return custom.build();
    }

    /**
     * 删除车辆信息
     *
     * @param carId
     * @return
     */
    @RequiresPermissions("car:del")
    @DeleteMapping("/deleteCar")
    public BaseResponse deleteCar(Integer carId) {
        ResponseBuilder custom = ResponseBuilder.custom();
        try {
            int result = carService.deleteByPrimaryKey(carId);
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
     * 分页获取车辆列表
     * @param currPage 当前页
     * @param pageSize 每页显示数量
     * @return
     */
    @RequiresPermissions("car:query")
    @GetMapping("/getCarList")
    public BaseResponse getCarList(@RequestParam Integer currPage,
                                   @RequestParam Integer pageSize) {
        ResponseBuilder custom = ResponseBuilder.custom();

        if (Objects.isNull(currPage) || currPage == 0) currPage = 1;
        if (Objects.isNull(pageSize) || pageSize == 0) pageSize = 10;
        //分页
        PageHelper.startPage(currPage, pageSize);
        try {
            List<Car> carList = carMapper.getCarList();
            Long count = carMapper.getCarCount();
            if (count != 0 && carList != null) {
                custom.data(carList).currPage(currPage)
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
    @RequiresPermissions("car:query")
    @GetMapping("/selectCarList")
    public PageTableResponse selectCarList(PageTableRequest request) {
        return new PageTableHandler(new PageTableHandler.CountHandler() {
            @Override
            public int count(PageTableRequest request) {
                return carMapper.count(request.getParams());
            }
        }, new PageTableHandler.ListHandler() {
            @Override
            public List<Car> list(PageTableRequest request) {
                return carMapper.selectCarList(request.getParams(), request.getOffset(), request.getLimit());
            }
        }).handle(request);
    }
}

