package com.zcc.admin.server.common;

/**
 * @Author: MrZcc
 * @Description:包含时间锉的Response
 * @Date: Created in 9:26 2019-3-26
 * @Modified By:
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
