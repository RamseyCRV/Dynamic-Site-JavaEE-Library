<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Admin</title>
</head>
<body>

	<div id="body"
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

			<div id="r" class="scroll">
				<button type="button" onclick="location.href='home.jsp'"><b>Inapoi</b></button>
              	  <table align="center">
                  <tr>  <td><button type="button" onclick="location.href='Informatii.jsp'" style="margin-top:30px; height:100px;"><b>Informatii</b></button></td></tr>
                  <tr>  <td><button type="button" onclick="location.href='IProfesori.jsp'" style="margin-top:30px; height:100px;"><b>Profesori</b></button></td></tr>
                  <tr>  <td><button type="button" onclick="location.href='IStudenti.jsp'" style="margin-top:30px; height:100px;"><b>Studenti</b></button></td></tr>
                   
                    </table>
            

			</div>
		</div>
	</div>

</body>
</html>