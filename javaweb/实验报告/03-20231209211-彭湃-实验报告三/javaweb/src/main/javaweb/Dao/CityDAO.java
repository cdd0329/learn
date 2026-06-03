package com.example.javaweb.Dao;

import com.example.javaweb.DBUtil;
import com.example.javaweb.Intity.City;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

public class CityDAO {

    public List<City> getCitiesByProvinceId(int provinceId) {
        List<City> cities = new ArrayList<>();
        Connection conn = null;
        try {
            conn = DBUtil.getConnection();
            String sql = "SELECT city_id, city_name, province_id FROM city WHERE province_id = ?";
            PreparedStatement pstmt = conn.prepareStatement(sql);
            pstmt.setInt(1, provinceId);
            ResultSet rs = pstmt.executeQuery();

            while (rs.next()) {
                City city = new City();
                city.setCityId(rs.getInt("city_id"));
                city.setCityName(rs.getString("city_name"));
                city.setProvinceId(rs.getInt("province_id"));
                cities.add(city);
            }

            rs.close();
            pstmt.close();
        } catch (SQLException e) {
            e.printStackTrace();
        } finally {
            DBUtil.closeConnection(conn);
        }
        return cities;
    }
}