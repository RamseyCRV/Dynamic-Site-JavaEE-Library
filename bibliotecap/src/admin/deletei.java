package admin;

import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.Statement;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class deletei
 */
@WebServlet("/deletei")
public class deletei extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public deletei() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String urlBazaDate = "jdbc:mysql://localhost/biblioteca";
		String user1 = "root";
		String password1 = "";
		
		String Id=request.getParameter("Id");
		
		try{
			Connection c = DriverManager.getConnection(urlBazaDate, user1, password1);
			Statement s = c.createStatement(); 
			String del="DELETE FROM info where Id='"+Id+"'";
			s.executeUpdate(del);
			
			s.close();
		}catch(Exception e){
			e.printStackTrace();
		}
		finally{
			System.out.println("sters");
		}
		response.sendRedirect("Informatii.jsp");
	}

}
