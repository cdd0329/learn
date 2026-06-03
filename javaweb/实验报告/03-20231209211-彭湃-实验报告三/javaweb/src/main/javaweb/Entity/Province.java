package com.example.javaweb.Intity;

public class Province {
    private int provinceId;
    private String provinceName;

    // 构造函数、getter和setter方法
    public Province() {}

    public Province(int provinceId, String provinceName) {
        this.provinceId = provinceId;
        this.provinceName = provinceName;
    }

    public int getProvinceId() {
        return provinceId;
    }

    public void setProvinceId(int provinceId) {
        this.provinceId = provinceId;
    }

    public String getProvinceName() {
        return provinceName;
    }

    public void setProvinceName(String provinceName) {
        this.provinceName = provinceName;
    }
}