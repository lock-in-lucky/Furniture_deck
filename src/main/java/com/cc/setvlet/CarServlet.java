package com.cc.setvlet;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.cc.dao.UserDao;
import com.cc.pojo.Car;
import com.cc.service.LoginService;

public class CarServlet extends HttpServlet{
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		LoginService l=new UserDao();
		String sql="SELECT * FROM shopcar";
		ArrayList<Car> list = l.queryCarAll(sql);
		req.setAttribute("list", list);
		req.getRequestDispatcher("Buycar.jsp").forward(req, resp);
		}
	
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		doGet(req, resp);
	}
}
