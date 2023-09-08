package com.cc.pojo;

public class Shopping {
	private Integer id;
	private String shop_id;
	private String shop_name;
	private String shop_style;
	private String shop_type;
	private double shop_price;
	public Shopping() {
		super();
	}
	public Shopping(String shop_id, String shop_name, String shop_style, String shop_type, double shop_price) {
		super();
		this.shop_id = shop_id;
		this.shop_name = shop_name;
		this.shop_style = shop_style;
		this.shop_type = shop_type;
		this.shop_price = shop_price;
	}
	public Shopping(Integer id, String shop_id, String shop_name, String shop_style, String shop_type,
			double shop_price) {
		super();
		this.id = id;
		this.shop_id = shop_id;
		this.shop_name = shop_name;
		this.shop_style = shop_style;
		this.shop_type = shop_type;
		this.shop_price = shop_price;
	}
	public Integer getId() {
		return id;
	}
	public void setId(Integer id) {
		this.id = id;
	}
	public String getShop_id() {
		return shop_id;
	}
	public void setShop_id(String shop_id) {
		this.shop_id = shop_id;
	}
	public String getShop_name() {
		return shop_name;
	}
	public void setShop_name(String shop_name) {
		this.shop_name = shop_name;
	}
	public String getShop_style() {
		return shop_style;
	}
	public void setShop_style(String shop_style) {
		this.shop_style = shop_style;
	}
	public String getShop_type() {
		return shop_type;
	}
	public void setShop_type(String shop_type) {
		this.shop_type = shop_type;
	}
	public double getShop_price() {
		return shop_price;
	}
	public void setShop_price(double shop_price) {
		this.shop_price = shop_price;
	}
	@Override
	public String toString() {
		return "Shopping [id=" + id + ", shop_id=" + shop_id + ", shop_name=" + shop_name + ", shop_style=" + shop_style
				+ ", shop_type=" + shop_type + ", shop_price=" + shop_price + "]";
	}

	
}
