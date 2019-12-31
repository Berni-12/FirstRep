package com.zw.admin.server.controller;

import com.zw.admin.server.common.BaseResponse;
import com.zw.admin.server.common.ResponseBuilder;
import com.zw.admin.server.constants.HttpConstans;
import com.zw.admin.server.model.Owner;
import com.zw.admin.server.service.OwnerService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;

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

    /**
     * 根据ID查询业主
     * @param ownerId
     * @return
     */
    @GetMapping("/selectOwner")
    public BaseResponse selectOwner(Integer ownerId){
        ResponseBuilder custom = ResponseBuilder.custom();
        Owner owner=new Owner();
        try {
            owner=ownerService.selectByPrimaryKey(ownerId);
            if (owner!=null){
                custom.data(owner).success(HttpConstans.SUCCESS, HttpConstans.SUCCESS_CODE);
            }else {
                custom.failed(HttpConstans.FAIL,HttpConstans.ERROR_CODE);
            }
        } catch (Exception e) {
            custom.failed(HttpConstans.FAIL, HttpConstans.EXCEPTION_CODE);
        }
        return custom.build();
    }

    /**
     * 添加业主
     * @param owner
     * @return
     */
    @PostMapping("/saveOwner")
    public BaseResponse selectOwner(@RequestBody Owner owner){
        ResponseBuilder custom = ResponseBuilder.custom();
        try{
            int result= ownerService.insertSelective(owner);
            if (result!=0){
                custom.data(owner).success(HttpConstans.SUCCESS,HttpConstans.SUCCESS_CODE);
            }else{
                custom.failed(HttpConstans.FAIL, HttpConstans.EXCEPTION_CODE);
            }
        }catch (Exception e){
            custom.failed(e.toString(), HttpConstans.EXCEPTION_CODE);
        }
        return custom.build();
    }

    /**
     * 更新/修改业主信息
     * @param owner
     * @return
     */
    @PostMapping("/updateOwner")
    public BaseResponse updateOwner(@RequestBody Owner owner){
        ResponseBuilder custom = ResponseBuilder.custom();
        try{
            int result= ownerService.updateByPrimaryKeySelective(owner);
            if (result!=0){
                custom.data(owner).success(HttpConstans.SUCCESS,HttpConstans.SUCCESS_CODE);
            }else{
                custom.failed(HttpConstans.FAIL, HttpConstans.EXCEPTION_CODE);
            }
        }catch (Exception e){
            custom.failed(HttpConstans.FAIL, HttpConstans.EXCEPTION_CODE);
        }
        return custom.build();
    }

    /**
     * 删除业主信息
     * @param ownerId
     * @return
     */
    @DeleteMapping("/deleteOwner")
    public BaseResponse updateOwner(Integer ownerId){
        ResponseBuilder custom = ResponseBuilder.custom();
        try{
            int result= ownerService.deleteByPrimaryKey(ownerId);
            if (result!=0){
                custom.success(HttpConstans.SUCCESS,HttpConstans.SUCCESS_CODE);
            }else{
                custom.failed(HttpConstans.FAIL, HttpConstans.EXCEPTION_CODE);
            }
        }catch (Exception e){
            custom.failed(HttpConstans.FAIL, HttpConstans.EXCEPTION_CODE);
        }
        return custom.build();
    }
}
