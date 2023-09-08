package com.cc.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import com.cc.pojo.Car;
import com.cc.pojo.Shopping;
import com.cc.service.LoginService;
import com.cc.util.JDBCutil;

public class UserDao implements LoginService{
	@Override
	public  boolean queryAll(String...s) {
		boolean b=false;
		try {
			Connection conn = JDBCutil.getConnection();
			String sql = "SELECT * FROM users WHERE user_name=? and user_psw=?;";
			PreparedStatement ps = conn.prepareStatement(sql);
			//增删改executeUpdate,查询executeQuery
			ps.setString(1,s[0]);
			ps.setString(2,s[1]);
			ResultSet rs = ps.executeQuery();
			b= rs.next();
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return b;
	}
	
	//增删改接口方法的实现类
	@Override
	public int modify(String sql, Object... params) {
		Connection conn=null;
		PreparedStatement ps = null;
		int n = 0;
		try {
			conn = JDBCutil.getConnection();
			ps= conn.prepareStatement(sql);
			if(params!=null && params.length>0) {
				for(int i=0;i<params.length;i++) {
					ps.setObject(i+1, params[i]);
				}
			}
			n = ps.executeUpdate();
			
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return n;
	}

	@Override
	public ArrayList<Car> queryCarAll(String s) {
		ArrayList<Car> carlist = new ArrayList<Car>();
		try {
			Connection conn = JDBCutil.getConnection();
			PreparedStatement ps = conn.prepareStatement(s);
			//增删改executeUpdate,查询executeQuery
			ResultSet rs = ps.executeQuery();
			while(rs.next()) {
				int car_int = rs.getInt("car_int");
				String car_remarks = rs.getString("car_remarks");
				String car_name = rs.getString("car_name");
				String car_price = rs.getString("car_price");
				int car_quantity = rs.getInt("car_quantity");
				//创建一个空的Goods对象封装查询出的每一行数据
				Car c = new Car();
				c.setCar_int(car_int);
				c.setCar_name(car_name);
				c.setCar_remarks(car_remarks);
				c.setCar_price(car_price);
				c.setCar_quantity(car_quantity);
				//将封装好的Goods对象g存入到集合中
				carlist.add(c);
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return carlist;
	}

	@Override
	public Shopping queryDet(int i) {
		Shopping p=null;
		String sql="select * from shopping where id="+i+"";
		try {
			Connection conn = JDBCutil.getConnection();
			PreparedStatement ps = conn.prepareStatement(sql);
			ResultSet rs = ps.executeQuery();
			while(rs.next()) {
			int id = rs.getInt("id");
			String shop_id = rs.getString("shop_id");
			String shop_name = rs.getString("shop_name");
			String shop_style = rs.getString("shop_style");
			String shop_type = rs.getString("shop_type");
			double shop_price = rs.getDouble("shop_price");
			
			p = new Shopping(id,shop_id,shop_name,shop_style,shop_type,shop_price);
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return p;
	}

	public static void main(String[] args) {
		LoginService l=new UserDao();
		Shopping s = l.queryDet(1);
		System.out.println(s);
	}

	@Override
	public int addShopCar(Shopping s) {
		int k=0;
		try {
			Connection conn = JDBCutil.getConnection();
			String sql="INSERT INTO shopcar VALUES(?,?,?,?,?)";
			PreparedStatement ps = conn.prepareStatement(sql);
			String shop_name = s.getShop_name();
			double shop_price = s.getShop_price();
			ps.setInt(1,0);
			ps.setString(2,"明日达");
			ps.setString(3,shop_name);
			ps.setDouble(4,shop_price);
			ps.setInt(5,1);
			k = ps.executeUpdate();
			
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return k;
	}
	
}
