<%@page import="java.sql.Statement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
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
			<table align="center" cellpadding="5" cellspacing="3" border="1">
				
				<tr>
				
					<td>Id</td>
					<td>Autor</td>
					<td>Tip</td>
					<td>Continut</td>
					<td>Localizare</td>
					
					
				</tr>
				<%
				String name=request.getParameter("Autor");
					try {
						Connection c = DriverManager.getConnection(urlBazaDate, user1,
								password1);
						Statement s = c.createStatement();
						ResultSet rs = s.executeQuery("SELECT * FROM info");
						while (rs.next()) {
				%>
				<tr>

					<td><%=rs.getString("Id")%></td>
					<td><%=rs.getString("Autor")%></td>
					<td><%=rs.getString("Tip")%></td>
					<td><%=rs.getString("Continut")%></td>
					<td><%=rs.getString("Localizare")%></td>
					

				</tr>
				<%
					}

					} catch (Exception e) {
						e.printStackTrace();
					}
				%>
			</table>

        <h2 align="center">Insert</h2>
        <form method="post" action="insertI">
            <table align="center">
               
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
                    <td>Localizare</td>
                    <td><input type="text" name="Localizare"></td>
                </tr>
                 
                <tr>
                    <td></td>
                    <td><input type="submit" value="Insert"></td>
                </tr>
            </table>
        </form>

        <h2 align="center">Stergere dupa</h2>
        <form method="post" action="deletei">
            <table align="center">

                <tr>
                    <td>Id:</td>
                    <td><input type="text" name="Id"></td>
                </tr>

                <tr>
                    <td></td>
                    <td><input type="submit" value="Stergere"></td>
                </tr>

            </table>
        </form>

       
        <h2 align="center">Modificare dupa</h2>
        <form method="post" action="changeI">
            <table align="center">

                <tr>
                    <td><b>Id:</b></td>
                    <td><input type="text" name="Id"></td>
                </tr>

                <tr>
                    <td>New Autor</td>
                    <td><input type="text" name="Autor"></td>
                </tr>
                <tr>
                    <td>New Tip</td>
                    <td> <select name = "Tip">
           			 <option value = "Text" selected>Text</option>
           			 <option value = "Video">Video</option>
            		<option value = "Audio">Audio</option>
         		</select></td>
                </tr>
				<tr>
				<td>New Continut</td>
                    <td> <select name = "Continut">
           			 <option value = "Curs" selected>Curs</option>
           			 <option value = "Articol">Articol Stintific</option>
            		<option value = "Teza">Teza Doctorat</option>
            		<option value = "Experiment">Experiment</option>
            		<option value = "Laborator">Laborator</option>
            		
         		</select></td>
                </tr>
                <tr>
                    <td>New Localizare</td>
                    <td><input type="text" name=""></td>
                </tr>
                
                <tr>
                    <td></td>
                    <td><input type="submit" value="Modifica"></td>
                </tr>

            </table>
        </form>
        </div>
		</div>
</body>
</html>