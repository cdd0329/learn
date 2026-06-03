package com.example.javaweb.Dao;

import com.example.javaweb.DBUtil;
import com.example.javaweb.Intity.District;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

public class DistrictDAO {

    public List<District> getDistrictsByCityId(int cityId) {
        List<District> districts = new ArrayList<>();
        Connection conn = null;
        try {
            conn = DBUtil.getConnection();
            String sql = "SELECT district_id, district_name, city_id FROM district WHERE city_id = ?";
            PreparedStatement pstmt = conn.prepareStatement(sql);
            pstmt.setInt(1, cityId);
            ResultSet rs = pstmt.executeQuery();

            while (rs.next()) {
                District district = new District();
                district.setDistrictId(rs.getInt("district_id"));
                district.setDistrictName(rs.getString("district_name"));
                district.setCityId(rs.getInt("city_id"));
                districts.add(district);
            }

            rs.close();
            pstmt.close();
        } catch (SQLException e) {
            e.printStackTrace();
        } finally {
            DBUtil.closeConnection(conn);
        }
        return districts;
    }
}