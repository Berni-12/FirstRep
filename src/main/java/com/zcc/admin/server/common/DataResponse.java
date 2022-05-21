package com.zcc.admin.server.common;

/**
 * @Author: superlewy
 * @Description:独立数据Response
 *
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
