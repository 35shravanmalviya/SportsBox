package com.DAO;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import com.entity.User;


public class UserDAOImpl implements UserDAO {
	
	private Connection conn;
	
	public UserDAOImpl(Connection conn) {
		super();
		this.conn = conn;
	}
	
	@Override
	public boolean userRegister(User us) {
		boolean f =false;
		try {
			String sql = "select cust_id_seq.nextval from customers";
			PreparedStatement pst = conn.prepareStatement(sql);
			ResultSet rs = pst.executeQuery();
		
			if(rs.next()) {
			    int cust_id_seq = rs.getInt(1);
			
			String sql2="insert into customers(CUSTOMER_ID,CUSTOMER_NAME,CUSTOMER_EMAILID,CUSTOMER_PHONENO,CUSTOMER_ADDRESS,CUSTOMER_PASSWORD,CUSTOMER_ROLE) values(?,?,?,?,?,?,?)";
			PreparedStatement ps=conn.prepareStatement(sql2);
			ps.setInt(1, cust_id_seq);
			ps.setString(2, us.getName());
			ps.setString(3, us.getEmail());
			ps.setString(4, us.getPhno());
			ps.setString(5, us.getAddress());
			ps.setString(6, us.getPassword());
			ps.setString(7, "customer");
			
		 int i = ps.executeUpdate();
		 if(i==1) {
			 f=true;
		 }
			
		} }
		catch (Exception e) {
			e.printStackTrace();
		}
		return f;
	}

	@Override
	public User login(String email, String password) {
		User us=null;
		try {
			String sql="select * from customers where CUSTOMER_EMAILID=? and CUSTOMER_PASSWORD=?";
			PreparedStatement ps=conn.prepareStatement(sql);
			ps.setString(1, email);
			ps.setString(2, password);
			
			ResultSet rs=ps.executeQuery();
			while(rs.next()) {
				us=new User();
				us.setId(rs.getInt(1));
				us.setName(rs.getString(2));
				us.setEmail(rs.getString(3));
				us.setPhno(rs.getString(4));
				us.setAddress(rs.getString(5));
				us.setPassword(rs.getString(6));
				us.setRole(rs.getString(7));
				
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
		
		return us;
		
	}}
