package com.zw.admin.server.controller;

import com.zw.admin.server.common.BaseResponse;
import com.zw.admin.server.common.ResponseBuilder;
import com.zw.admin.server.constants.HttpConstans;
import com.zw.admin.server.model.Visitor;
import com.zw.admin.server.service.VisitorService;
import io.swagger.annotations.ApiOperation;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;

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

    /**
     * 根据ID查询访客
     * @param visitorId
     * @return
     */
    @GetMapping("/selectVisitor")
    public BaseResponse selectVisitor(Integer visitorId){
        ResponseBuilder custom = ResponseBuilder.custom();
        Visitor visitor=new Visitor();
        try {
            visitor=visitorService.selectByPrimaryKey(visitorId);
            if (visitor!=null){
                custom.data(visitor).success(HttpConstans.SUCCESS, HttpConstans.SUCCESS_CODE);
            }else {
                custom.failed(HttpConstans.FAIL,HttpConstans.ERROR_CODE);
            }
        } catch (Exception e) {
            custom.failed(HttpConstans.FAIL, HttpConstans.EXCEPTION_CODE);
        }
        return custom.build();
    }

    /**
     * 添加访客
     * @param visitor
     * @return
     */
    @PostMapping("/saveVisitor")
    public BaseResponse selectVisitor(@RequestBody Visitor visitor){
        ResponseBuilder custom = ResponseBuilder.custom();
        try{
            visitorService.insertSelective(visitor);
            custom.data(visitor).success(HttpConstans.SUCCESS,HttpConstans.SUCCESS_CODE);
        }catch (Exception e){
            custom.failed(e.toString(), HttpConstans.EXCEPTION_CODE);
        }
        return custom.build();
    }

    /**
     * 更新访客信息
     * @param visitor
     * @return
     */
    @PostMapping("/updateVisitor")
    public BaseResponse updateVisitor(@RequestBody Visitor visitor){
        ResponseBuilder custom = ResponseBuilder.custom();
        try{
            visitorService.updateByPrimaryKeySelective(visitor);
            custom.data(visitor).success(HttpConstans.SUCCESS,HttpConstans.SUCCESS_CODE);
        }catch (Exception e){
            custom.failed(HttpConstans.FAIL, HttpConstans.EXCEPTION_CODE);
        }
        return custom.build();
    }

    /**
     * 删除访客信息
     * @param visitorId
     * @return
     */
    @DeleteMapping("/deleteVisitor")
    public BaseResponse updateVisitor(Integer visitorId){
        ResponseBuilder custom = ResponseBuilder.custom();
        try{
            visitorService.deleteByPrimaryKey(visitorId);
            custom.success(HttpConstans.SUCCESS,HttpConstans.SUCCESS_CODE);
        }catch (Exception e){
            custom.failed(HttpConstans.FAIL, HttpConstans.EXCEPTION_CODE);
        }
        return custom.build();
    }


}
