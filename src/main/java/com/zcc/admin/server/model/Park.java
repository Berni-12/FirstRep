package com.zcc.admin.server.model;

public class Park {
    private String parkNo;

    private Integer ownerId;

    private String expiraDate;

    private String parkArea;

    private Integer parkType;

    private String ownerName;

    public Integer getParkType() {
        return parkType;
    }

    public void setParkType(Integer parkType) {
        this.parkType = parkType;
    }

    public String getOwnerName() {
        return ownerName;
    }

    public void setOwnerName(String ownerName) {
        this.ownerName = ownerName;
    }

    public String getParkNo() {
        return parkNo;
    }

    public void setParkNo(String parkNo) {
        this.parkNo = parkNo == null ? null : parkNo.trim();
    }

    public Integer getOwnerId() {
        return ownerId;
    }

    public void setOwnerId(Integer ownerId) {
        this.ownerId = ownerId;
    }

    public String getExpiraDate() {
        return expiraDate;
    }

    public void setExpiraDate(String expiraDate) {
        this.expiraDate = expiraDate == null ? null : expiraDate.trim();
    }

    public String getParkArea() {
        return parkArea;
    }

    public void setParkArea(String parkArea) {
        this.parkArea = parkArea == null ? null : parkArea.trim();
    }
}