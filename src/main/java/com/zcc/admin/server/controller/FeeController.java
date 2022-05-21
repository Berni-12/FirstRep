package com.zcc.admin.server.controller;

import com.github.pagehelper.PageHelper;
import com.zcc.admin.server.common.BaseResponse;
import com.zcc.admin.server.common.ResponseBuilder;
import com.zcc.admin.server.constants.HttpConstans;
import com.zcc.admin.server.dao.FeeMapper;
import com.zcc.admin.server.model.Fee;
import com.zcc.admin.server.service.FeeService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;

import java.util.List;
import java.util.Objects;

/**
 * @ClassName FeeController
 * @Description TODO
 * @Author superlewy
 */
@RestController
@RequestMapping("/fee")
public class FeeController {

    @Autowired
    private FeeService feeService;

    @Autowired
    private FeeMapper feeMapper;

    /**
     * 根据ID查询缴费项目信息
     *
     * @param feeId
     * @return
     */
    @GetMapping("/selectFee")
    public BaseResponse selectFee(Integer feeId) {
        ResponseBuilder custom = ResponseBuilder.custom();
        Fee fee = new Fee();
        try {
            fee = feeService.selectByPrimaryKey(feeId);
            if (fee != null) {
                custom.data(fee).success(HttpConstans.SUCCESS, HttpConstans.SUCCESS_CODE);
            } else {
                custom.failed(HttpConstans.FAIL, HttpConstans.ERROR_CODE);
            }
        } catch (Exception e) {
            custom.failed(HttpConstans.FAIL, HttpConstans.EXCEPTION_CODE);
        }
        return custom.build();
    }

    /**
     * 添加缴费项目信息
     *
     * @param fee
     * @return
     */
    @PostMapping("/saveFee")
    public BaseResponse saveFee(@RequestBody Fee fee) {
        ResponseBuilder custom = ResponseBuilder.custom();
        try {
            int result = feeService.insertSelective(fee);
            if (result != 0) {
                custom.data(fee).success(HttpConstans.SUCCESS, HttpConstans.SUCCESS_CODE);
            } else {
                custom.failed(HttpConstans.FAIL, HttpConstans.EXCEPTION_CODE);
            }
        } catch (Exception e) {
            custom.failed(e.toString(), HttpConstans.EXCEPTION_CODE);
        }
        return custom.build();
    }

    /**
     * 更新/修改缴费项目信息
     *
     * @param fee
     * @return
     */
    @PostMapping("/updateFee")
    public BaseResponse updateFee(@RequestBody Fee fee) {
        ResponseBuilder custom = ResponseBuilder.custom();
        try {
            int result = feeService.updateByPrimaryKeySelective(fee);
            if (result != 0) {
                custom.data(fee).success(HttpConstans.SUCCESS, HttpConstans.SUCCESS_CODE);
            } else {
                custom.failed(HttpConstans.FAIL, HttpConstans.EXCEPTION_CODE);
            }
        } catch (Exception e) {
            custom.failed(HttpConstans.FAIL, HttpConstans.EXCEPTION_CODE);
        }
        return custom.build();
    }

    /**
     * 删除缴费项目信息
     *
     * @param feeId
     * @return
     */
    @DeleteMapping("/deleteFee")
    public BaseResponse deleteFee(Integer feeId) {
        ResponseBuilder custom = ResponseBuilder.custom();
        try {
            int result = feeService.deleteByPrimaryKey(feeId);
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
     * 分页获取缴费项目列表
     * @param currPage 当前页
     * @param pageSize 每页显示数量
     * @return
     */
    @GetMapping("/getFeeList")
    public BaseResponse getFeeList(@RequestParam Integer currPage,
                                   @RequestParam Integer pageSize) {
        ResponseBuilder custom = ResponseBuilder.custom();

        if (Objects.isNull(currPage) || currPage == 0) currPage = 1;
        if (Objects.isNull(pageSize) || pageSize == 0) pageSize = 10;
        //分页
        PageHelper.startPage(currPage, pageSize);
        try {
            List<Fee> feeList = feeMapper.getFeeList();
            Long count = feeMapper.getFeeCount();
            if (count != 0 && feeList != null) {
                custom.data(feeList).currPage(currPage)
                        .pageSize(pageSize).totalCount(count.intValue());
            } else {
                custom.failed(HttpConstans.FAIL, HttpConstans.ERROR_CODE);
            }
        } catch (Exception e) {
            custom.failed(HttpConstans.FAIL, HttpConstans.EXCEPTION_CODE);
        }

        return custom.build();

    }
}
