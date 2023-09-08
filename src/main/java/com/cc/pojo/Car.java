package com.cc.pojo;

public class Car {
private  Integer car_int;
private String car_remarks;
private String car_name;
private String car_price;
private Integer car_quantity;
public Car() {
	super();
}
public Car(String car_remarks, String car_name, String car_price, Integer car_quantity) {
	super();
	this.car_remarks = car_remarks;
	this.car_name = car_name;
	this.car_price = car_price;
	this.car_quantity = car_quantity;
}
public Integer getCar_int() {
	return car_int;
}
public void setCar_int(Integer car_int) {
	this.car_int = car_int;
}
public String getCar_remarks() {
	return car_remarks;
}
public void setCar_remarks(String car_remarks) {
	this.car_remarks = car_remarks;
}
public String getCar_name() {
	return car_name;
}
public void setCar_name(String car_name) {
	this.car_name = car_name;
}
public String getCar_price() {
	return car_price;
}
public void setCar_price(String car_price) {
	this.car_price = car_price;
}
public Integer getCar_quantity() {
	return car_quantity;
}
public void setCar_quantity(Integer car_quantity) {
	this.car_quantity = car_quantity;
}
@Override
public String toString() {
	return "Car [car_int=" + car_int + ", car_remarks=" + car_remarks + ", car_name=" + car_name + ", car_price="
			+ car_price + ", car_quantity=" + car_quantity + "]";
}



}
