<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
		<title>Login Page</title>
		 <meta name="viewport" content="width=device-width, initial-scale=1.0">
		 
		 <link rel="stylesheet" type="text/css" href="css/home.css">
		  <link rel="stylesheet" type="text/css" href="css/footer.css">
		  <link rel="stylesheet" type="text/css" href="css/otherLogin.css">
		  
		 
		 <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH" crossorigin="anonymous">
		 <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-YvpcrYf0tY3lHB60NNkmXc5s9fDVZLESaAA55NDzOxhy9GkcIdslK1eN7N6jIeHz" crossorigin="anonymous"></script>
		 <style>
            @import url('https://fonts.googleapis.com/css2?family=Poppins:ital,wght@0,100;0,200;0,300;0,400;0,500;0,600;0,700;0,800;0,900;1,100;1,200;1,300;1,400;1,500;1,600;1,700;1,800;1,900&display=swap');
            @import url('https://fonts.googleapis.com/css2?family=Montserrat+Alternates:ital,wght@0,100;0,200;0,300;0,400;0,500;0,600;0,700;0,800;0,900;1,100;1,200;1,300;1,400;1,500;1,600;1,700;1,800;1,900&family=Montserrat:ital,wght@0,100..900;1,100..900&display=swap');
            @import url('https://fonts.cdnfonts.com/css/evolventa');
            @import url('https://fonts.googleapis.com/css2?family=Montserrat+Alternates:ital,wght@0,100;0,200;0,300;0,400;0,500;0,600;0,700;0,800;0,900;1,100;1,200;1,300;1,400;1,500;1,600;1,700;1,800;1,900&family=Montserrat:ital,wght@0,100..900;1,100..900&family=Syne:wght@400..800&display=swap');
        
        body{
          background-image: url('images/otherloginbg.jpg');
  		background-size: cover;
  		background-position: center;
  		background-repeat: no-repeat;
 		 background-attachment: fixed;
         }
        </style>
    
    
</head>
<body>



    <br><br><br>
        <div class="image-container">
        <h1 class="title"><center><bold>Supplier Login<bold></center></h1>
        
         
        <center>
        <div class="login-container">
            <div class="login-box">
                <form action="supplierLoginServ" method="POST">
                    <input type="text" placeholder="Username" id="username" name="username" required>
                    <input type="text" placeholder="Password" id="password" name="password" required>
                    <br><br>
                    <button class="aesthetic-button" type="submit" value="Login">Login</button><br>
                    <br><br><br>
                    <button class= "transparent-button" type="submit" value="signup"><a href="customerRegister.jsp">Forgot Password? Re-set Password</a></button>
                   <!--  <button type="submit" value="signup"><a href="customerRegister.jsp">Signp</a></button> -->
                </form>
            </div>
            
        </div>
        </center>
    </div>
    <br><br><br><br>
   <jsp:include page="footer.jsp" />
</body>
</html>