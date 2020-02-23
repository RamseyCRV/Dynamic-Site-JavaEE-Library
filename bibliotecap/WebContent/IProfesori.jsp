<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.ResultSet"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Admin</title>
</head>
<body>

<div id="Body"
		style="width: 1300px; height: 1100px; margin: 0 auto;">

		<div id="header" style="height: 300px; width: 1300px;">
			<img src="banner.png">
		</div>
		
            <style type="text/css">
                .scroll{
                    background-color:#e2e9d7;
                    overflow: auto;
                    float:left;
                    width: 1300px;
                    height: 800px;
                }
            </style>
			
			<div id="rightSection" class="scroll">
			<button type="button" onclick="location.href='admin.jsp'"><b>Back</b></button>
               
                <%
				String urlBazaDate = "jdbc:mysql://localhost/biblioteca";
				String user1 = "root";
				String password1 = "";

				try {
					Class.forName("com.mysql.jdbc.Driver");

				} catch (ClassNotFoundException e) {
					e.printStackTrace();
				}
			%>
			<h2 align="center">Afisare</h2>
			<table align="center" cellpadding="2" cellspacing="3" border="1">
				
				<tr>
				
					<td>User</td>
					<td>Password</td>
				
					
					
				</tr>
				<%
				
					try {
						Connection c = DriverManager.getConnection(urlBazaDate, user1,
								password1);
						Statement s = c.createStatement();
						ResultSet rs = s.executeQuery("SELECT * FROM profesor");
						while (rs.next()) {
				%>
				<tr>

					<td><%=rs.getString("User")%></td>
					<td><%=rs.getString("Password")%></td>
					

				</tr>
				<%
					}

					} catch (Exception e) {
						e.printStackTrace();
					}
				%>
			</table>

        <h2 align="center">Insert</h2>
        <form method="post" action="insertP">
            <table align="center">
               
                <tr>
                    <td>User</td>
                    <td><input type="text" name="User"></td>
                </tr>
                
                <tr>
                    <td>Password</td>
                    <td><input type="text" name="Password"></td>
                </tr>

               
                 
                <tr>
                    <td></td>
                    <td><input type="submit" value="Insert"></td>
                </tr>
            </table>
        </form>

        <h2 align="center">Stergere dupa</h2>
        <form method="post" action="deleteP">
            <table align="center">

                <tr>
                    <td>User</td>
                    <td><input type="text" name="User"></td>
                </tr>

                <tr>
                    <td></td>
                    <td><input type="submit" value="Stergere"></td>
                </tr>

            </table>
        </form>

       
        </div>
		</div>

</body>
</html>