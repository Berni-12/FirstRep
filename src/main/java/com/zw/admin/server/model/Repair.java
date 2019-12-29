package com.zw.admin.server.model;

/**
 * 报修
 */
public class Repair {
    private Integer repairId;

    private String repairTime;

    private String repairReson;

    private String ownerId;

    private Integer repairState;

    private String finishTime;

    public Integer getRepairId() {
        return repairId;
    }

    public void setRepairId(Integer repairId) {
        this.repairId = repairId;
    }

    public String getRepairTime() {
        return repairTime;
    }

    public void setRepairTime(String repairTime) {
        this.repairTime = repairTime == null ? null : repairTime.trim();
    }

    public String getRepairReson() {
        return repairReson;
    }

    public void setRepairReson(String repairReson) {
        this.repairReson = repairReson == null ? null : repairReson.trim();
    }

    public String getOwnerId() {
        return ownerId;
    }

    public void setOwnerId(String ownerId) {
        this.ownerId = ownerId == null ? null : ownerId.trim();
    }

    public Integer getRepairState() {
        return repairState;
    }

    public void setRepairState(Integer repairState) {
        this.repairState = repairState;
    }

    public String getFinishTime() {
        return finishTime;
    }

    public void setFinishTime(String finishTime) {
        this.finishTime = finishTime == null ? null : finishTime.trim();
    }
}