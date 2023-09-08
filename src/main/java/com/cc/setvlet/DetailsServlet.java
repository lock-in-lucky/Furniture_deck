package com.cc.setvlet;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.cc.dao.UserDao;
import com.cc.pojo.Shopping;
import com.cc.service.LoginService;

public class DetailsServlet extends HttpServlet{
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		LoginService l=new UserDao();
		String id = req.getParameter("id");
		int i = Integer.parseInt(id);
		Shopping shop = l.queryDet(i);
		req.setAttribute("shop", shop);
		req.getRequestDispatcher("good.jsp").forward(req, resp);
		
	}
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		doGet(req, resp);
	}
}
