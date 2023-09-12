import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.Statement;

public class JDBC_Select {

	public static void main(String argsp[])
	{
		try {
		       
			   Class.forName("com.mysql.jdbc.Driver");
			   Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/jitu","root","Jitu@123");
			   Statement st = conn.createStatement();
			   ResultSet rs = st.executeQuery("select * from student");
			   
			   while(rs.next())
			   {
				      int student_Id =    rs.getInt(1);
				      String FName = rs.getString(2);
				      String LName = rs.getString(3);
				      String D_Name = rs.getString(4);
				      String City = rs.getString(5);
				      
				      System.out.println("Student ID:-"+student_Id+" Student Name:-"+FName+"student LastName:-"+LName+" Department Name:-"+D_Name+"City:-"+City);
			   }
			   
		}catch(Exception e) {
			e.printStackTrace();
		}
	}
}
