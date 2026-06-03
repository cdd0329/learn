package com.example.javaweb.Servlet;

import com.example.javaweb.Dao.DistrictDAO;
import com.example.javaweb.Intity.District;
import com.fasterxml.jackson.databind.ObjectMapper;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;

@WebServlet("/districts")
public class DistrictServlet extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        // 设置响应内容类型和字符编码
        response.setContentType("application/json");
        response.setCharacterEncoding("UTF-8");

        // 获取城市ID参数
        String cityIdStr = request.getParameter("cityId");
        if (cityIdStr != null && !cityIdStr.isEmpty()) {
            try {
                int cityId = Integer.parseInt(cityIdStr);

                DistrictDAO districtDAO = new DistrictDAO();
                List<District> districts = districtDAO.getDistrictsByCityId(cityId);

                ObjectMapper objectMapper = new ObjectMapper();
                String json = objectMapper.writeValueAsString(districts);

                // 输出JSON数据
                PrintWriter out = response.getWriter();
                out.print(json);
                out.flush();
            } catch (NumberFormatException e) {
                response.sendError(HttpServletResponse.SC_BAD_REQUEST, "Invalid city ID");
            }
        } else {
            response.sendError(HttpServletResponse.SC_BAD_REQUEST, "City ID is required");
        }
    }
}