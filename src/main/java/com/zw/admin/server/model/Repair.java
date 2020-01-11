package com.zw.admin.server.model;

/**
 * 报修
 */
public class Repair {
    private Integer repairId;

    private String repairTime;

    private String repairReson;

    private Integer repairState;

    private String finishTime;

    private String repairPeopleName;

    private String houseNo;

    private String phoneNum;

    public String getPhoneNum() {
        return phoneNum;
    }

    public void setPhoneNum(String phoneNum) {
        this.phoneNum = phoneNum;
    }

    public String getRepairPeopleName() {
        return repairPeopleName;
    }

    public void setRepairPeopleName(String repairPeopleName) {
        this.repairPeopleName = repairPeopleName;
    }

    public String getHouseNo() {
        return houseNo;
    }

    public void setHouseNo(String houseNo) {
        this.houseNo = houseNo;
    }

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