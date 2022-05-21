package com.zcc.admin.server.common;

/**
 * @Author: superlewy
 * @Description:包含时间锉的Response
 */
public class TimeStampResponse {

    private long responseTime = System.currentTimeMillis();

    public long getResponseTime() {
        return responseTime;
    }

    public void setResponseTime(long responseTime) {
        this.responseTime = responseTime;
    }

}
