package com.zcc.admin.server.model;

/**
 * @ClassName Build
 * @Description TODO
 * @Author zhangcc
 * @Date 2020/1/20 16:36
 */
public class Build {

    private Integer id;

    private String buildName;

    private String buildArea;

    private Integer buildFloor;


    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public String getBuildName() {
        return buildName;
    }

    public void setBuildName(String buildName) {
        this.buildName = buildName;
    }

    public String getBuildArea() {
        return buildArea;
    }

    public void setBuildArea(String buildArea) {
        this.buildArea = buildArea;
    }

    public Integer getBuildFloor() {
        return buildFloor;
    }

    public void setBuildFloor(Integer buildFloor) {
        this.buildFloor = buildFloor;
    }
}
