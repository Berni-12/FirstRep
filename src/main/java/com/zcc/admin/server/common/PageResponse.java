package com.zcc.admin.server.common;

/**
 * @Author: MrZcc
 * @Description:分页数据Response bean
 * @Date: Created in 9:30 2019-3-26
 * @Modified By:
 */
public class PageResponse {
    private long total;
    private int currPage;
    private int pageSize;
    private int totalPage;

    public long getTotal() {
        return total;
    }

    public void setTotal(long total) {
        this.total = total;
    }

    public int getCurrPage() {
        return currPage;
    }

    public void setCurrPage(int currPage) {
        this.currPage = currPage;
    }

    public int getPageSize() {
        return pageSize;
    }

    public void setPageSize(int pageSize) {
        this.pageSize = pageSize;
    }

    public int getTotalPage() {
        return totalPage;
    }

    public void setTotalPage(int totalPage) {
        this.totalPage = totalPage;
    }

    public PageResponse() {
    }

    public PageResponse(long total, int currPage, int pageSize, int totalPage) {
        this.total = total;
        this.currPage = currPage;
        this.pageSize = pageSize;
        this.totalPage = totalPage;
    }
}
