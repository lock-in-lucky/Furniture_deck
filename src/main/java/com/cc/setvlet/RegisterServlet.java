package com.cc.setvlet;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.cc.dao.UserDao;
import com.cc.service.LoginService;

public class RegisterServlet extends HttpServlet{
		@Override
		protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
			req.setCharacterEncoding("UTF-8");
			resp.setCharacterEncoding("UTF-8");
			PrintWriter out = resp.getWriter();
			String reg_name = req.getParameter("reg_name");
			String reg_psw = req.getParameter("reg_psw");
			String sql="insert into users values(?,?,?)";
			Object a[]= {0,reg_name,reg_psw};
			LoginService l=new UserDao();
			int modify = l.modify(sql, a);
			if(modify==1) {
				out.print("<script>alert('注册成功');location.href='register.jsp';</script>");
			}else{
				System.out.println("失败");
			}
			
		}
		@Override
		protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
			doGet(req, resp);
		}
}
