package com.DAO;

import java.sql.Connection;
import com.User.*;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;




public class PostDAO{
 private Connection conn;

public PostDAO(Connection conn) {
	super();
	this.conn = conn;
}
 
 public boolean AddNotes(String ti,String Co,int ui)
 {
	 
	 boolean f = false;
	 try {
		 
		 String  query = "insert into post(title,content,uid) values(?,?,?)";
		 PreparedStatement ps = conn.prepareStatement(query);
		 
		 ps.setString(1, ti);
		 ps.setString(2, Co);
		 ps.setInt(3, ui);
		 
		 int i=ps.executeUpdate();
		 if(i==1)
		 {
			 f= true;
		 }
		 
	     }catch(Exception e) {
		 e.printStackTrace();
	 }
	 return f;
 }
 
      public List<Post1> getData(int id)
      {
    	  List<Post1> list = new ArrayList<Post1>();
    	  
    	  
    	  try {
    		  
    		   String query="select * from post Where id=?";
    		   PreparedStatement ps = conn.prepareStatement(query);
    		   ps.setInt(1,id);
    		   
    		   ResultSet rs = ps.executeQuery();
    		   
    		   while(rs.next())
    		   {
    			   Post1 po = new Post1();
    			   po.setId(rs.getInt(1));
    			   po.setTitle(rs.getString(2));
    			   po.setContent(rs.getString(3));
    			   po.setPdate(rs.getTimestamp(4));
    			   
    			   list.add(po);
    		   }
    	  }catch(Exception e) {
    		  e.printStackTrace();
    	  }
    	  return list;
      }
}
