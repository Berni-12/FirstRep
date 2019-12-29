package com.zw.admin.server.model;

public class Owner {
    private Integer ownerId;

    private String ownerName;

    private String ownerSex;

    private String ownerPhone;

    private String ownerComeTime;

    private String ownerIdCard;

    public Integer getOwnerId() {
        return ownerId;
    }

    public void setOwnerId(Integer ownerId) {
        this.ownerId = ownerId;
    }

    public String getOwnerName() {
        return ownerName;
    }

    public void setOwnerName(String ownerName) {
        this.ownerName = ownerName == null ? null : ownerName.trim();
    }

    public String getOwnerSex() {
        return ownerSex;
    }

    public void setOwnerSex(String ownerSex) {
        this.ownerSex = ownerSex == null ? null : ownerSex.trim();
    }

    public String getOwnerPhone() {
        return ownerPhone;
    }

    public void setOwnerPhone(String ownerPhone) {
        this.ownerPhone = ownerPhone == null ? null : ownerPhone.trim();
    }

    public String getOwnerComeTime() {
        return ownerComeTime;
    }

    public void setOwnerComeTime(String ownerComeTime) {
        this.ownerComeTime = ownerComeTime == null ? null : ownerComeTime.trim();
    }

    public String getOwnerIdCard() {
        return ownerIdCard;
    }

    public void setOwnerIdCard(String ownerIdCard) {
        this.ownerIdCard = ownerIdCard == null ? null : ownerIdCard.trim();
    }
}