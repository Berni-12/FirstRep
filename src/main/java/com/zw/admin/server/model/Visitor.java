package com.zw.admin.server.model;

public class Visitor {
    private Integer visitorId;

    private String visitorName;

    private String visitorSex;

    private String visitorPhone;

    private String visitorCardNo;

    private String visitorComeTime;

    public Integer getVisitorId() {
        return visitorId;
    }

    public void setVisitorId(Integer visitorId) {
        this.visitorId = visitorId;
    }

    public String getVisitorName() {
        return visitorName;
    }

    public void setVisitorName(String visitorName) {
        this.visitorName = visitorName == null ? null : visitorName.trim();
    }

    public String getVisitorSex() {
        return visitorSex;
    }

    public void setVisitorSex(String visitorSex) {
        this.visitorSex = visitorSex == null ? null : visitorSex.trim();
    }

    public String getVisitorPhone() {
        return visitorPhone;
    }

    public void setVisitorPhone(String visitorPhone) {
        this.visitorPhone = visitorPhone == null ? null : visitorPhone.trim();
    }

    public String getVisitorCardNo() {
        return visitorCardNo;
    }

    public void setVisitorCardNo(String visitorCardNo) {
        this.visitorCardNo = visitorCardNo == null ? null : visitorCardNo.trim();
    }

    public String getVisitorComeTime() {
        return visitorComeTime;
    }

    public void setVisitorComeTime(String visitorComeTime) {
        this.visitorComeTime = visitorComeTime == null ? null : visitorComeTime.trim();
    }
}