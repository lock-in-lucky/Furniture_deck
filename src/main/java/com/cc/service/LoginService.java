package com.cc.service;

import java.util.ArrayList;
import java.util.List;

import com.cc.pojo.Car;
import com.cc.pojo.Shopping;

public interface LoginService {
	public abstract boolean queryAll(String...s);
	public abstract ArrayList<Car> queryCarAll(String s);
	public abstract int modify(String sql, Object ...params);
	public abstract Shopping queryDet(int i);
	public abstract int addShopCar(Shopping s); 
}
