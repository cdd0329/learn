package com.example.javaweb.Intity;

public class District {
    private int districtId;
    private String districtName;
    private int cityId;

    // 构造函数、getter和setter方法
    public District() {}

    public District(int districtId, String districtName, int cityId) {
        this.districtId = districtId;
        this.districtName = districtName;
        this.cityId = cityId;
    }

    public int getDistrictId() {
        return districtId;
    }

    public void setDistrictId(int districtId) {
        this.districtId = districtId;
    }

    public String getDistrictName() {
        return districtName;
    }

    public void setDistrictName(String districtName) {
        this.districtName = districtName;
    }

    public int getCityId() {
        return cityId;
    }

    public void setCityId(int cityId) {
        this.cityId = cityId;
    }
}