package com.DAO;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import com.User.UserDetails;

public class UserDao {
	
	private Connection conn;

	public UserDao(Connection conn) {
		super();
		this.conn = conn;
	}

	public boolean adduser(UserDetails us)
	{
		boolean f = false;
		
		try {
			   String query = "insert into user2(name,email,password) values(?,?,?)";
			   PreparedStatement ps = conn.prepareStatement(query);
			   
			   ps.setString(1, us.getName());
			   ps.setString(2, us.getEmail());
			   ps.setString(3, us.getPassword());
			   
			   int i = ps.executeUpdate();
			   if(i>0)
			   {
				   f = true;
			   }
		    }catch(Exception e) {
		    	e.printStackTrace();
		    }
		
		return f;
	}
	
	
	
	public UserDetails loginUser(UserDetails us)
	{
		UserDetails user = null;
		
		try {
			
			String query = "select * from user2 where email = ? and password = ? ";
			PreparedStatement ps = conn.prepareStatement(query);
			
			ps.setString(1, us.getEmail());
			ps.setString(2, us.getPassword());
			
			ResultSet rs = ps.executeQuery();
			
			if(rs.next())
			{
			    user = new UserDetails();
			    user.setId(rs.getInt("id"));
			    user.setName(rs.getString("name"));
			    user.setEmail(rs.getString("email"));
			    user.setPassword(rs.getString("password"));
			}
		}catch(Exception e) {
			e.printStackTrace();
		}
		
		return user;
	}
	
	

}