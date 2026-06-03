package com.example.javaweb.Servlet;

import com.example.javaweb.Dao.ProvinceDAO;
import com.example.javaweb.Intity.Province;
import com.fasterxml.jackson.databind.ObjectMapper;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;
@WebServlet("/provinces")
public class ProvinceServlet extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        // 设置响应内容类型和字符编码
        response.setContentType("application/json");
        response.setCharacterEncoding("UTF-8");

        ProvinceDAO provinceDAO = new ProvinceDAO();
        List<Province> provinces = provinceDAO.getAllProvinces();

        ObjectMapper mapper = new ObjectMapper();
        String json = mapper.writeValueAsString(provinces);


        // 输出JSON数据
        PrintWriter out = response.getWriter();
        out.print(json);
        out.flush();
    }
    
}