package com.zcc.admin.server.common;

/**
 * @Author: MrZcc
 * @Description:带分页数据的Response
 * @Date: Created in 9:29 2019-3-26
 * @Modified By:
 */
public class PageDatasResponse<T> extends DatasResponse<T> {
    public PageResponse page;

    public PageResponse getPage() {
        return page;
    }

    public void setPage(PageResponse page) {
        this.page = page;
    }
}
