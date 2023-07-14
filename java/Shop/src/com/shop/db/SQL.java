package com.shop.db;

public class SQL {

	// customer
	public static final String SELECT_CUSTOMER = "SELECT * FROM `Customer` WHERE `custId`=?";
	public static final String INSERT_CUSTOMER = "INSERT INTO `Customer` set "
											   + "`custId`=?,"
											   + "`name`=?,"
											   + "`addr`=?,"
											   + "`rdate`=NOW()";
	
	// order
	public final static String SELECT_ORDERS = "SELECT"
											 + "a.*,"
											 + "b.`name`,"
											 + "c.`prodName`"
											 + "FROM `Order` AS a"
											 + "JOIN `Customer` AS b ON a.orderNo = b.custId "
											 + "JOIN `product` AS c ON a.orderProduct = c.prodNO";
											 
	
	public final static String INSERT_ORDER = "INSERT INTO `order` SET"
											+ "`orderID`=?,"
											+ "`orderProduct`=?,"
											+ "`orderCount`=?,"
											+ "`orderDate`=NOW()";
	
	// product
	public final static String SELECT_PRODUCTS = "SELECT * FROM `Product` WHERE `stock` > 0"; 
	public final static String SELECT_PRODUCT = "SELECT * FROM `Product` WHERE `prodNo` > 0";
	public final static String UPDATE_PRODUCT_STOCK = "UPDATE `Product` SET `stock` = `stock` - ? WHERE `prodNo`=?";
	
}
