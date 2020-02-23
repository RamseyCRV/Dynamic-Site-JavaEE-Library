<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Fail</title>
</head>
<body>

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
				<h1>Datele introduse sunt incorecte....</h1>
			</div>
		</div>
	</div>

</body>
</html>