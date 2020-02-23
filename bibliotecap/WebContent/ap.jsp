<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Home</title>
</head>

<div id="outerBody"
		style="width: 1300px; height: 1100px; margin: 0 auto;">

		<div id="header" style="height: 300px; width: 1300px;">
			<img src="banner.png">
		</div>

		<div id="body">
			<div id="leftSection" style="float: Left; width: 200px; height: 800px;background-color:#07052d">

                <ul>
                      <button type="button" onclick="location.href='al.jsp'" style="background-color:#e2e9d7;border-radius:5px;"><b>Logare Administrator</b></button>
                    <hr>
                    <button type="button" onclick="location.href='ap.jsp'" style="background-color:#e2e9d7;border-radius:5px;"><b>Logare Profesor</b></button>
                    <hr>
					<button type="button" onclick="location.href='as.jsp'" style="background-color:#e2e9d7;border-radius:5px;"><b>Logare Student</b></button>
                    <hr>
                    <button type="button" onclick="location.href='register.jsp'" style="background-color:#e2e9d7;border-radius:5px;"><b>Inregistrare Student</b></button>
                                           
                </ul>


			</div>
            
            <style type="text/css">
                .scroll{
                    background-color:#e2e9d7;
                    overflow: auto;
                    float:left;
                    width: 1100px;
                    height: 800px;
                }
            </style>

			<div id="rightSection" class="scroll">
				
                <form method="post" action="lp" align="center" style="margin-top: 100px;">
        	
                    <table align="center">
                        
                        <tr>
                            <td>Profesor User:</td>
                            <td><input type="text" name="User"></td>
                        </tr>
            
                        <tr>
                            <td>Password:</td>
                            <td><input type="password" name="Password"></td>
                        </tr>
            
                        <tr>
                            <td><input type="submit" value="Login"></td>
                        </tr>
            
                    </table>
                </form>
			</div>
		</div>
	</div>


</body>
</html>