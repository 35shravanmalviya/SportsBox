package com.entity;

public class Products {
	private int product_id;
	private String product_name;
	private double unit_price;
	private int quantity_in_stock;
	private int category_id;
	public Products() {
		super();
		
	}
	public Products(int product_id, String product_name, double unit_price, int quantity_in_stock, int category_id) {
		super();
		this.product_id = product_id;
		this.product_name = product_name;
		this.unit_price = unit_price;
		this.quantity_in_stock = quantity_in_stock;
		this.category_id = category_id;
	}
	public int getProduct_id() {
		return product_id;
	}
	public void setProduct_id(int product_id) {
		this.product_id = product_id;
	}
	public String getProduct_name() {
		return product_name;
	}
	public void setProduct_name(String product_name) {
		this.product_name = product_name;
	}
	public double getUnit_price() {
		return unit_price;
	}
	public void setUnit_price(double unit_price) {
		this.unit_price = unit_price;
	}
	public int getQuantity_in_stock() {
		return quantity_in_stock;
	}
	public void setQuantity_in_stock(int quantity_in_stock) {
		this.quantity_in_stock = quantity_in_stock;
	}
	public int getCategory_id() {
		return category_id;
	}
	public void setCategory_id(int category_id) {
		this.category_id = category_id;
	}
	@Override
	public String toString() {
		return "Products [product_id=" + product_id + ", product_name=" + product_name + ", unit_price=" + unit_price
				+ ", quantity_in_stock=" + quantity_in_stock + ", category_id=" + category_id + "]";
	}
	
	
}