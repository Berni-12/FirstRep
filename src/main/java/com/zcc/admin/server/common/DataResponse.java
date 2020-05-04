package com.zcc.admin.server.common;

/**
 * @Author: MrZcc
 * @Description:独立数据Response
 * @Date: Created in 9:28 2019-3-26
 * @Modified By:
 */
public class DataResponse<T> extends BaseResponse {
    private T data;

    public T getData() {
        return data;
    }

    public void setData(T data) {
        this.data = data;
    }
}
