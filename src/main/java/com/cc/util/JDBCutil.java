package com.cc.util;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

public class JDBCutil {
	private static String url = "jdbc:mysql://localhost:3306/test?useSSL=false&serverTimezone=GMT%2B8&useUnicode=true&characterEncoding=UTF8&autoReconnect=true&failOverReadOnly=false";
	private static String user = "root";
	private static String passwd = "root";

	static {
		try {
			Class.forName("com.mysql.jdbc.Driver");
		} catch (ClassNotFoundException e) {
			e.printStackTrace();
		}
	}

	/**
	 * �ͷ���Դ
	 *
	 * @param rs
	 * @param stmt
	 * @param conn
	 */
	public static void release(ResultSet rs, Statement stmt, Connection conn) {
		try {
			if (rs != null) {
				rs.close();
			}
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			try {
				if (stmt != null) {
					stmt.close();
				}
			} catch (SQLException e) {
				e.printStackTrace();
			} finally {
				try {
					if (conn != null) {
						conn.close();
					}
				} catch (SQLException e) {
					e.printStackTrace();
				}
			}
		}
	}

	/**
	 * ��ȡ����
	 *
	 * @return
	 * @throws SQLException
	 */
	public static Connection getConnection() throws SQLException {
		final Connection conn = DriverManager.getConnection(url, user, passwd);
		return conn;
	}
}
