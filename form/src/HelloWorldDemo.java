
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;
import java.sql.Statement;

import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.mvc.AbstractController;

import form.User;



public class HelloWorldDemo extends AbstractController{
	public ModelAndView handleRequestInternal(HttpServletRequest req,HttpServletResponse res) {
	    System.out.println("hiii123");
	    String n=req.getParameter("name");
		String p=req.getParameter("password");
		String sa=req.getParameter("salary");
		String s=req.getParameter("sex");
		String r=req.getParameter("remarks");
		 User u=new User();
		 u.setName(n);
		 u.setPassword(p);
		 u.setSalary(sa);
		 u.setSex(s);
		 u.setRemarks(r);
		Connection con=null;
		try {
			Class.forName("com.mysql.jdbc.Driver");
			con=DriverManager.getConnection("jdbc:mysql://192.168.1.31:3306/test?characterEncoding=utf8","vinoth","Icm@12345");
			System.out.println("ki");
			Statement st=con.createStatement();
			String sql="insert into emp(name,password,salary,sex,remarks) values('"+u.getName()+"','"+u.getPassword()+"','"+u.getSalary()+"','"+u.getSex()+"','"+u.getRemarks()+"')";
			System.out.println("sql");
			st.executeUpdate(sql);
		}
		catch(SQLException e) {
			e.printStackTrace();
		} catch (ClassNotFoundException e) {

			e.printStackTrace();
		}
		
	return new ModelAndView("hello","u",u);
	}

}
