package com.zcc.admin.server.constants;

import com.zcc.admin.server.common.ResponseBuilder;

/**
 * @ClassName HttpConstans
 * @Description 请求响应的Code
 * @Author zhangcc
 * @Date 2019/12/29 18:05
 */
public class HttpConstans {

    public static final int ERROR_CODE = -1;

    public static final int SUCCESS_CODE = 0;

    public static final int EXCEPTION_CODE = -2;

    public static final String FILE_UPLOAD_FAIL = "文件上传失败";

    public static final String FILE_UPLOAD_NULL = "上传文件为空";

    public static final String QUERY_FAIL = "查询失败";

    public static final String SUCCESS = "SUCCESS";

    public static final String FAIL = "FAILED";

    /**
     * 响应结果
     *
     * @param result
     * @return
     */
    public static final ResponseBuilder RESULT(int result) {

        ResponseBuilder custom = ResponseBuilder.custom();

        if (result == 0) {
            custom.failed(HttpConstans.FAIL, HttpConstans.ERROR_CODE);
        } else {
            custom.success(HttpConstans.SUCCESS, HttpConstans.SUCCESS_CODE);
        }

        return custom;
    }

    /**
     * 响应结果
     *
     * @param result
     * @return
     */
    public static final ResponseBuilder OBJRESULT(Object result) {

        ResponseBuilder custom = ResponseBuilder.custom();

        if (result == null) {
            custom.failed(HttpConstans.FAIL, HttpConstans.ERROR_CODE);
        } else {
            custom.data(result).success(HttpConstans.SUCCESS, HttpConstans.SUCCESS_CODE);
        }

        return custom;
    }
}
