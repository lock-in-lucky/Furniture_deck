package com.cc.setvlet;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.cc.dao.UserDao;
import com.cc.pojo.Shopping;
import com.cc.service.LoginService;

public class AddShopCar extends HttpServlet{
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
			req.setCharacterEncoding("GBK");
			resp.setCharacterEncoding("GBK");
			String id = req.getParameter("id");
			PrintWriter out = resp.getWriter();
			int i = Integer.parseInt(id);
			System.out.println(i);
			LoginService l=new UserDao();
			Shopping shop = l.queryDet(i);
			System.out.println(shop);
			int addShopCar = l.addShopCar(shop);
			
			req.setAttribute("shop", shop);
			
			if(addShopCar==1) {
				out.print("<script>alert('加入购物车成功，快去购物车购买吧');location.href='Shopping?id="+i+"';</script>");
			}else {
				System.out.println("失败");
			}
	}
	
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		doGet(req, resp);
	}
}
