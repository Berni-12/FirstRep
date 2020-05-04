package com.zcc.admin.server.model;

public class Fee {
    private Integer feeId;

    private String feeName;

    private String feeNorm;

    public Integer getFeeId() {
        return feeId;
    }

    public void setFeeId(Integer feeId) {
        this.feeId = feeId;
    }

    public String getFeeName() {
        return feeName;
    }

    public void setFeeName(String feeName) {
        this.feeName = feeName == null ? null : feeName.trim();
    }

    public String getFeeNorm() {
        return feeNorm;
    }

    public void setFeeNorm(String feeNorm) {
        this.feeNorm = feeNorm == null ? null : feeNorm.trim();
    }
}