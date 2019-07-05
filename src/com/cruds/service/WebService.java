package com.cruds.service;



import java.util.List;

import com.cruds.db.WebcartDAO;
import com.cruds.entity.Consumer;
import com.cruds.entity.Order;
import com.cruds.entity.OrderItem;
import com.cruds.entity.Product;


public class WebService {
	
	public static boolean register(Consumer c)
	{
		WebcartDAO dao = new WebcartDAO();
		return dao.addConsumer(c);	
	}
	
	public static boolean validateUserLogin(String userName,String password )
	{
		WebcartDAO dao = new WebcartDAO();
		return dao.validateUserLogin(userName, password);
	}
	
	public static boolean addToCart(String user,String pid)
	{
		WebcartDAO dao = new WebcartDAO();
		return dao.addToCart(user,pid);
	}
	
	public static List<Product> getCart(String user)
	{
		WebcartDAO dao = new WebcartDAO();
		return dao.getCart(user);
	}
	
	public static boolean delete(String user, String pid)
	{
		WebcartDAO dao = new WebcartDAO();
		return dao.delete(user, pid);
	}
	
	public static boolean addOrderItem(OrderItem o)
	{
		WebcartDAO dao = new WebcartDAO();
		return dao.addOrderItem(o);
	}
	
	public static boolean addOrderDetails(Order o)
	{
		WebcartDAO dao = new WebcartDAO();
		return dao.addOrderDetails(o);
	}
	
	public static boolean deleteCartItems(String user)
	{
		WebcartDAO dao = new WebcartDAO();
		return dao.deleteCartItems(user);
	}
	
	public static List<Order> getOrderDetails(String user)
	{
		WebcartDAO dao = new WebcartDAO();
		return dao.getOrderDetails(user);
	}

}
