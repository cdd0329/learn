<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>基于AJAX的级联下拉菜单</title>
    <style>
        body {
            font-family: 'Arial', sans-serif;
            margin: 20px;
            background-color: #f8f9fa;
        }
        .container {
            max-width: 600px;
            margin: 0 auto;
            padding: 20px;
            background-color: #fff;
            border-radius: 5px;
            box-shadow: 0 0 10px rgba(0,0,0,0.1);
        }
        h1 {
            color: #007bff;
            text-align: center;
        }
        .form-group {
            margin-bottom: 15px;
        }
        label {
            display: block;
            margin-bottom: 5px;
            font-weight: bold;
        }
        select {
            width: 100%;
            padding: 8px;
            border: 1px solid #ced4da;
            border-radius: 4px;
            box-sizing: border-box;
        }
        .result {
            margin-top: 20px;
            padding: 15px;
            background-color: #e9ecef;
            border-radius: 4px;
        }
    </style>
    <script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
    <script>
        $(document).ready(function() {
            // 页面加载时获取所有省份
            $.ajax({
                url: "/Province",
                type: "GET",
                dataType: "json",
                success: function(data) {
                    // 清空选项
                    $("#province").empty();
                    $("#city").empty();
                    $("#district").empty();

                    // 添加默认选项
                    $("#province").append('<option value="">-- 请选择省份 --</option>');
                    $("#city").append('<option value="">-- 请选择城市 --</option>');
                    $("#district").append('<option value="">-- 请选择区县 --</option>');

                    // 添加获取到的省份选项
                    $.each(data, function(index, province) {
                        $("#province").append('<option value="' + province.provinceId + '">' + province.provinceName + '</option>');
                    });
                },
                error: function(xhr, status, error) {
                    console.error("加载省份失败:", error);
                    alert("加载省份失败，请刷新页面重试！");
                }
            });

            // 当省份选择变化时
            $("#province").change(function() {
                var provinceId = $(this).val();
                if (provinceId) {
                    // 根据选中的省份ID获取城市列表
                    $.ajax({
                        url: "cities",
                        type: "GET",
                        data: { provinceId: provinceId },
                        dataType: "json",
                        success: function(data) {
                            // 清空城市和区县选择框
                            $("#city").empty();
                            $("#district").empty();

                            // 添加默认选项
                            $("#city").append('<option value="">-- 请选择城市 --</option>');
                            $("#district").append('<option value="">-- 请选择区县 --</option>');

                            // 添加获取到的城市选项
                            $.each(data, function(index, city) {
                                $("#city").append('<option value="' + city.cityId + '">' + city.cityName + '</option>');
                            });

                            // 更新显示信息
                            updateSelection();
                        },
                        error: function(xhr, status, error) {
                            console.error("加载城市失败:", error);
                            alert("加载城市失败，请重试！");
                        }
                    });
                } else {
                    // 如果未选择省份，清空城市和区县选择框
                    $("#city").empty().append('<option value="">-- 请选择城市 --</option>');
                    $("#district").empty().append('<option value="">-- 请选择区县 --</option>');
                    updateSelection();
                }
            });

            // 当城市选择变化时
            $("#city").change(function() {
                var cityId = $(this).val();
                if (cityId) {
                    // 根据选中的城市ID获取区县列表
                    $.ajax({
                        url: "districts",
                        type: "GET",
                        data: { cityId: cityId },
                        dataType: "json",
                        success: function(data) {
                            // 清空区县选择框
                            $("#district").empty();

                            // 添加默认选项
                            $("#district").append('<option value="">-- 请选择区县 --</option>');

                            // 添加获取到的区县选项
                            $.each(data, function(index, district) {
                                $("#district").append('<option value="' + district.districtId + '">' + district.districtName + '</option>');
                            });

                            // 更新显示信息
                            updateSelection();
                        },
                        error: function(xhr, status, error) {
                            console.error("加载区县失败:", error);
                            alert("加载区县失败，请重试！");
                        }
                    });
                } else {
                    // 如果未选择城市，清空区县选择框
                    $("#district").empty().append('<option value="">-- 请选择区县 --</option>');
                    updateSelection();
                }
            });

            // 当区县选择变化时
            $("#district").change(function() {
                updateSelection();
            });

            // 更新选择信息显示
            function updateSelection() {
                var province = $("#province option:selected").text();
                var city = $("#city option:selected").text();
                var district = $("#district option:selected").text();

                var result = "当前选择: ";
                if (province !== "-- 请选择省份 --") {
                    result += province;
                    if (city !== "-- 请选择城市 --") {
                        result += " > " + city;
                        if (district !== "-- 请选择区县 --") {
                            result += " > " + district;
                        }
                    }
                } else {
                    result += "未选择";
                }

                $("#selectionResult").text(result);
            }
        });
    </script>
</head>
<body>
<div class="container">
    <h1>级联下拉菜单示例</h1>

    <div class="form-group">
        <label for="province">省份：</label>
        <select id="province">
            <option value="">-- 请选择省份 --</option>
        </select>
    </div>

    <div class="form-group">
        <label for="city">城市：</label>
        <select id="city">
            <option value="">-- 请选择城市 --</option>
        </select>
    </div>

    <div class="form-group">
        <label for="district">区县：</label>
        <select id="district">
            <option value="">-- 请选择区县 --</option>
        </select>
    </div>

    <div class="result">
        <p id="selectionResult">当前选择: 未选择</p>
    </div>
</div>
</body>
</html>