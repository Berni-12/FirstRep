package com.zw.admin.server.model;

public class Pay {
    private Integer ownerPayId;

    private Integer feeItemId;

    private Integer ownerId;

    private String payTime;

    private Integer payMoney;

    private Integer payReceive;

    private String payState;

    public Integer getOwnerPayId() {
        return ownerPayId;
    }

    public void setOwnerPayId(Integer ownerPayId) {
        this.ownerPayId = ownerPayId;
    }

    public Integer getFeeItemId() {
        return feeItemId;
    }

    public void setFeeItemId(Integer feeItemId) {
        this.feeItemId = feeItemId;
    }

    public Integer getOwnerId() {
        return ownerId;
    }

    public void setOwnerId(Integer ownerId) {
        this.ownerId = ownerId;
    }

    public String getPayTime() {
        return payTime;
    }

    public void setPayTime(String payTime) {
        this.payTime = payTime == null ? null : payTime.trim();
    }

    public Integer getPayMoney() {
        return payMoney;
    }

    public void setPayMoney(Integer payMoney) {
        this.payMoney = payMoney;
    }

    public Integer getPayReceive() {
        return payReceive;
    }

    public void setPayReceive(Integer payReceive) {
        this.payReceive = payReceive;
    }

    public String getPayState() {
        return payState;
    }

    public void setPayState(String payState) {
        this.payState = payState == null ? null : payState.trim();
    }
}