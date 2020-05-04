package com.zcc.admin.server.common;

import com.fasterxml.jackson.databind.ObjectMapper;

import java.io.IOException;
import java.util.List;
import java.util.Objects;
import java.util.stream.Collectors;

/**
 * @Author: MrZcc
 * @Description:多条数据Response
 * @Date: Created in 9:28 2019-3-26
 * @Modified By:
 */
public class DatasResponse<T> extends BaseResponse {
    private List<T> datas;

    public static void main(String[] args) {
        System.out.println(1 / 0.0);
    }

    public List<T> getDatas() {
        return datas;
    }

    public void setDatas(List<T> datas) {
        this.datas = datas;
    }

    public List<T> getDatas(Class<T> clazz) throws IOException {
        List<T> collect = this.datas.stream().map(region -> {
            ObjectMapper om = new ObjectMapper();
            try {
                return om.readValue(om.writeValueAsString(region), clazz);
            } catch (Exception e) {
                e.printStackTrace();
            }
            return null;
        }).filter(Objects::nonNull).collect(Collectors.toList());
        return collect;
    }
}
