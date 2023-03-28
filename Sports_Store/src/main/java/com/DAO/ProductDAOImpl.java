package com.DAO;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

import com.entity.Products;

public class ProductDAOImpl implements IProduct {
	private Connection conn;
	
	public ProductDAOImpl() {
		super();
		this.conn=conn;
	}
	
	public ProductDAOImpl(Connection conn) {
		super();
		this.conn = conn;
	}

	@Override
	public List<Products> getAllProducts() {
		List<Products> list = new ArrayList<Products>();
		Products p=null;
		try {
			String sql = "select * from product";
			PreparedStatement ps=conn.prepareStatement(sql);
			
			ResultSet rs = ps.executeQuery();
			while(rs.next()) {
				p=new Products();
				p.setProduct_id(rs.getInt(1));
				p.setProduct_name(rs.getString(2));
				p.setUnit_price(rs.getDouble(3));
				p.setQuantity_in_stock(rs.getInt(4));
				p.setCategory_id(rs.getInt(5));
				list.add(p);
				
			}
		}catch(Exception e) {
			e.printStackTrace();
		}
		return list;
	}

	

}