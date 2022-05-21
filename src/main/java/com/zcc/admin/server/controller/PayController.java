package com.zcc.admin.server.controller;

import com.github.pagehelper.PageHelper;
import com.zcc.admin.server.dao.PayMapper;
import com.zcc.admin.server.model.Pay;
import com.zcc.admin.server.service.PayService;
import com.zcc.admin.server.common.BaseResponse;
import com.zcc.admin.server.common.ResponseBuilder;
import com.zcc.admin.server.constants.HttpConstans;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;

import java.util.List;
import java.util.Objects;

/**
 * @ClassName PayController
 * @Description 缴费单
 * @Author superlewy
 */

@RestController
@RequestMapping("/pay")
public class PayController {

    @Autowired
    private PayService payService;

    @Autowired
    private PayMapper payMapper;

    /**
     * 根据ID查询缴费单信息
     *
     * @param payId
     * @return
     */
    @GetMapping("/selectPay")
    public BaseResponse selectPay(Integer payId) {
        ResponseBuilder custom = ResponseBuilder.custom();
        Pay pay = new Pay();
        try {
            pay = payService.selectByPrimaryKey(payId);
            if (pay != null) {
                custom.data(pay).success(HttpConstans.SUCCESS, HttpConstans.SUCCESS_CODE);
            } else {
                custom.failed(HttpConstans.FAIL, HttpConstans.ERROR_CODE);
            }
        } catch (Exception e) {
            custom.failed(HttpConstans.FAIL, HttpConstans.EXCEPTION_CODE);
        }
        return custom.build();
    }

    /**
     * 添加缴费单信息
     *
     * @param pay
     * @return
     */
    @PostMapping("/savePay")
    public BaseResponse savePay(@RequestBody Pay pay) {
        ResponseBuilder custom = ResponseBuilder.custom();
        try {
            int result = payService.insertSelective(pay);
            if (result != 0) {
                custom.data(pay).success(HttpConstans.SUCCESS, HttpConstans.SUCCESS_CODE);
            } else {
                custom.failed(HttpConstans.FAIL, HttpConstans.EXCEPTION_CODE);
            }
        } catch (Exception e) {
            custom.failed(e.toString(), HttpConstans.EXCEPTION_CODE);
        }
        return custom.build();
    }

    /**
     * 更新/修改缴费单信息
     *
     * @param pay
     * @return
     */
    @PostMapping("/updatePay")
    public BaseResponse updatePay(@RequestBody Pay pay) {
        ResponseBuilder custom = ResponseBuilder.custom();
        try {
            int result = payService.updateByPrimaryKeySelective(pay);
            if (result != 0) {
                custom.data(pay).success(HttpConstans.SUCCESS, HttpConstans.SUCCESS_CODE);
            } else {
                custom.failed(HttpConstans.FAIL, HttpConstans.EXCEPTION_CODE);
            }
        } catch (Exception e) {
            custom.failed(HttpConstans.FAIL, HttpConstans.EXCEPTION_CODE);
        }
        return custom.build();
    }

    /**
     * 删除缴费单
     *
     * @param payId
     * @return
     */
    @DeleteMapping("/deletePay")
    public BaseResponse deletePay(Integer payId) {
        ResponseBuilder custom = ResponseBuilder.custom();
        try {
            int result = payService.deleteByPrimaryKey(payId);
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
     * 分页获取缴费单列表
     * @param currPage 当前页
     * @param pageSize 每页显示数量
     * @return
     */
    @GetMapping("/getPayList")
    public BaseResponse getPayList(@RequestParam Integer currPage,
                                    @RequestParam Integer pageSize) {
        ResponseBuilder custom = ResponseBuilder.custom();

        if (Objects.isNull(currPage) || currPage == 0) currPage = 1;
        if (Objects.isNull(pageSize) || pageSize == 0) pageSize = 10;
        //分页
        PageHelper.startPage(currPage, pageSize);
        try {
            List<Pay> payList = payMapper.getPayList();
            Long count = payMapper.getPayCount();
            if (count != 0 && payList != null) {
                custom.data(payList).currPage(currPage)
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
