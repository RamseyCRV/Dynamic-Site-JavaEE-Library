package profesor;

import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class lp
 */
@WebServlet("/lp")
public class lp extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public lp() {
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

		String User=request.getParameter("User");
		String Password=request.getParameter("Password");
		
		
		try {

			Class.forName("com.mysql.jdbc.Driver");
			Connection c = DriverManager.getConnection(urlBazaDate, user1, password1);
			
			PreparedStatement pst=c.prepareStatement("SELECT User,Password FROM profesor WHERE User=? AND Password=?");
		
			pst.setString(1, User);
			pst.setString(2, Password);
			
			ResultSet rs=pst.executeQuery();
			
			while (rs.next()) {
				response.sendRedirect("profesor.jsp");
				return;
			}
			response.sendRedirect("fail.jsp");
			return;
			
		} catch (Exception e) {
			e.printStackTrace();
			
		} 
	}

}
