package com.example.javaweb.Intity;

public class City {
    private int cityId;
    private String cityName;
    private int provinceId;

    // 构造函数、getter和setter方法
    public City() {}

    public City(int cityId, String cityName, int provinceId) {
        this.cityId = cityId;
        this.cityName = cityName;
        this.provinceId = provinceId;
    }

    public int getCityId() {
        return cityId;
    }

    public void setCityId(int cityId) {
        this.cityId = cityId;
    }

    public String getCityName() {
        return cityName;
    }

    public void setCityName(String cityName) {
        this.cityName = cityName;
    }

    public int getProvinceId() {
        return provinceId;
    }

    public void setProvinceId(int provinceId) {
        this.provinceId = provinceId;
    }
}