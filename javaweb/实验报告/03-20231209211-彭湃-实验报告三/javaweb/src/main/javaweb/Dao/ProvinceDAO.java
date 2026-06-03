package com.example.javaweb.Dao;

import com.example.javaweb.DBUtil;
import com.example.javaweb.Intity.Province;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

public class ProvinceDAO {

    public List<Province> getAllProvinces() {
        List<Province> provinces = new ArrayList<>();
        Connection conn = null;
        try {
            conn = DBUtil.getConnection();
            String sql = "SELECT province_id, province_name FROM province";
            PreparedStatement pstmt = conn.prepareStatement(sql);
            ResultSet rs = pstmt.executeQuery();

            while (rs.next()) {
                Province province = new Province();
                province.setProvinceId(rs.getInt("province_id"));
                province.setProvinceName(rs.getString("province_name"));
                provinces.add(province);
            }

            rs.close();
            pstmt.close();
        } catch (SQLException e) {
            e.printStackTrace();
        } finally {
            DBUtil.closeConnection(conn);
        }
        return provinces;
    }

}