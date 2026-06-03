package com.example.javaweb.Servlet;

import com.example.javaweb.Dao.CityDAO;
import com.example.javaweb.Intity.City;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import com.fasterxml.jackson.databind.ObjectMapper;

import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;

@WebServlet("/cities")
public class CityServlet extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        // 设置响应内容类型和字符编码
        response.setContentType("application/json");
        response.setCharacterEncoding("UTF-8");

        // 获取省份ID参数
        String provinceIdStr = request.getParameter("provinceId");
        if (provinceIdStr != null && !provinceIdStr.isEmpty()) {
            try {
                int provinceId = Integer.parseInt(provinceIdStr);

                CityDAO cityDAO = new CityDAO();
                List<City> cities = cityDAO.getCitiesByProvinceId(provinceId);


                ObjectMapper mapper = new ObjectMapper();
                String json = mapper.writeValueAsString(cities);

                // 输出JSON数据
                PrintWriter out = response.getWriter();
                out.print(json);
                out.flush();
            } catch (NumberFormatException e) {
                response.sendError(HttpServletResponse.SC_BAD_REQUEST, "Invalid province ID");
            }
        } else {
            response.sendError(HttpServletResponse.SC_BAD_REQUEST, "Province ID is required");
        }
    }
}