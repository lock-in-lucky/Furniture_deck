package com.cc.setvlet;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.cc.dao.UserDao;
import com.cc.service.LoginService;

public class LoginServlet extends HttpServlet{
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		req.setCharacterEncoding("GBK");
		resp.setCharacterEncoding("GBK");
		String username = req.getParameter("username");
		String password = req.getParameter("password");
		PrintWriter out = resp.getWriter();
		LoginService l=new UserDao();
		resp.setContentType("text/html;charset=utf-8");
		boolean b = l.queryAll(username,password);
		if(b) {
			req.getRequestDispatcher("index.jsp").forward(req, resp);
		}else {
			out.print("<script>alert('用户名或密码错误');location.href='login.jsp?a=1';</script>");
		}
	}
	
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		doGet(req, resp);
	}
}
