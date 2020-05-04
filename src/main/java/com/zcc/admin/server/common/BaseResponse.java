package com.zcc.admin.server.common;

import com.fasterxml.jackson.annotation.JsonInclude;
import com.fasterxml.jackson.annotation.JsonProperty;

import java.io.Serializable;
import java.util.Map;

/**
 * @Author: MrZcc
 * @Description:标准默认的BaseResponse
 * @Date: Created in 9:27 2019-3-26
 * @Modified By:
 */
public class BaseResponse extends TimeStampResponse implements Serializable {
    @JsonInclude(value = JsonInclude.Include.NON_NULL)
    @JsonProperty("_extend")
    Map<String, String> extend;
    private String message = "success";
    private int code;

    public String getMessage() {
        return message;
    }

    public void setMessage(String message) {
        this.message = message;
    }

    public int getCode() {
        return code;
    }

    public void setCode(int code) {
        this.code = code;
    }

    public Map<String, String> getExtend() {
        return extend;
    }

    public void setExtend(Map<String, String> extend) {
        this.extend = extend;
    }
}
