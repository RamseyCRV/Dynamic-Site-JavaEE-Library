<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Student</title>
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
			<button type="button" onclick="location.href='home.jsp'"><b>Home</b></button>
               <form action="student.jsp">
                    	<table align="center" style="margin-top:20px;">
                    	 
                   		 <tr>
            				<td>Autor</td>
                   			 <td><input type="text" name="Autor"></td> 
                   		 </tr>
                   		  <tr>
            				<td>Tip</td>
                   		 <td> <select name = "Tip">
           				 <option value = "Text" selected>Text</option>
           				 <option value = "Video">Video</option>
            			<option value = "Audio">Audio</option>
         				</select></td>
                   		 </tr>
                   		  <tr>
            				<td>Continut</td>
                  		  <td> <select name = "Continut">
           					 <option value = "Curs" selected>Curs</option>
           					 <option value = "Articol">Articol Stintific</option>
            				<option value = "Teza">Teza Doctorat</option>
            				<option value = "Experiment">Experiment</option>
            				<option value = "Laborator">Laborator</option>
            		
         					</select></td>
                   		 </tr>
                   		  
  
                   		<tr>
                   		<td><input type="submit" name="s" value="Search"></td>
                   		</tr>
                   		
                    	</table>
                    	</form>
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
			<table align="center" cellpadding="6" cellspacing="3" border="1">
				
				<tr>
				
					<td>Id</td>
					<td>Autor</td>
					<td>Tip</td>
					<td>Continut</td>
					<td>Localizare</td>
					<td>Deschidere</td>
					<td>Inchidere</td>
					
					
				</tr>
				<%
				
				String Autor=request.getParameter("Autor");
				String Tip=request.getParameter("Tip");
				String Continut=request.getParameter("Continut");
				
			
					try {
						Connection c = DriverManager.getConnection(urlBazaDate, user1,
								password1);
						Statement s = c.createStatement();
						String i = "insert into stare"	+ "(Accesari,Stare)" +"values('1','Blocat')";
						String in = "insert into stare"	+ "(Accesari,Stare)" +"values('-1','Liber')";
					
						ResultSet rs = s.executeQuery("SELECT * FROM info WHERE Autor='"+Autor+"' OR Tip='"+Tip+"' OR Continut='"+Continut+"'");
						while (rs.next()) {
				%>
				<tr>

					<td><%=rs.getString("Id")%></td>
					<td><%=rs.getString("Autor")%></td>
					<td><%=rs.getString("Tip")%></td>
					<td><%=rs.getString("Continut")%></td>
					<td><%=rs.getString("Localizare")%></td>
					<td><button type="button" onclick="<%s.executeUpdate(i);%>">Access</button></td>
					<td><button type="button" onclick="<%s.executeUpdate(in);%>">Close</button></td>
				</tr>
					
				<%
				
					}

					} catch (Exception e) {
						e.printStackTrace();
					}
				%>
			</table>

        </div>
		</div>
</body>
</html>