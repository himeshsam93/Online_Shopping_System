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
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH" crossorigin="anonymous">
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-YvpcrYf0tY3lHB60NNkmXc5s9fDVZLESaAA55NDzOxhy9GkcIdslK1eN7N6jIeHz" crossorigin="anonymous"></script>

    <style>
        @import url('https://fonts.googleapis.com/css2?family=Poppins:wght@400;500;600;700&display=swap');
        @import url('https://fonts.googleapis.com/css2?family=Montserrat:wght@400;600&display=swap');


        .container {
        margin-top: 100px;
            display: flex;
            justify-content: space-between;
            align-items: center;
            width: 80%;
            max-width: 1200px;
            background-color: white;
            box-shadow: 0 4px 15px rgba(0, 0, 0, 0.1);
            border-radius: 15px;
            padding: 30px;
        }

        .left-side {
            flex: 1;
            padding-right: 20px;
        }

        .left-side img {
            width: 100%; 
            height: auto;
            border-radius: 20px;
            box-shadow: 0 4px 15px rgba(0, 0, 0, 0.2);
        }

        .right-side {
            flex: 1;
            display: flex;
            flex-direction: column;
            align-items: center;
            height: auto;
            width: 100%;
        }

        .title {
            font-family: 'Poppins', sans-serif;
            font-size: 40px;
            font-weight: bold;
            color: #000;
            text-align: center;
            margin-bottom: 20px;
            text-transform: uppercase;
            text-shadow: 2px 4px 8px rgba(0, 0, 0, 0.1);
        }

        .login-box {
            width: 100%;
            max-width: 400px;
            background-color: #f9f9f9;
            padding: 30px;
            border-radius: 15px;
            box-shadow: 0 8px 20px rgba(0, 0, 0, 0.1);
        }

        .login-box form input {
            width: 100%;
            padding: 15px;
            margin-bottom: 15px;
            border-radius: 10px;
            border: 1px solid #ddd;
            background-color: #fff;
            box-shadow: inset 0 2px 4px rgba(0, 0, 0, 0.1);
            font-size: 16px;
        }

        .aesthetic-button {
            background: linear-gradient(135deg, #6a11cb, #2575fc);
            color: white;
            border: none;
            border-radius: 50px;
            padding: 15px;
            font-size: 16px;
            cursor: pointer;
            transition: all 0.3s ease;
            width: 100%;
        }

        .aesthetic-button:hover {
            background: linear-gradient(135deg, #2575fc, #6a11cb);
            transform: translateY(-2px);
        }

        .transparent-button {
            background-color: transparent;
            border: 2px solid #000;
            color: #000;
            font-size: 16px;
            padding: 10px;
            border-radius: 5px;
            width: 100%;
            text-align: center;
            margin-bottom: 10px;
        }

        .transparent-button a {
            text-decoration: none;
            color: #000;
        }

        .transparent-button:hover {
            background-color: rgba(0, 0, 0, 0.1);
        }

        p.other-logins {
            font-family: 'Poppins', sans-serif;
            font-size: 20px;
            color: black;
            text-align: center;
            margin: 20px 0;
        }

    </style>
    
    <script>
    	
	    function showPassword(){
	    	   
	        var password = document.getElementById("password");
	        var rePassword = document.getElementById("re_password");
	
	        if ((password.type === "password") || (rePassword === "password")){
	
	            password.type = "text";
	            rePassword.type = "text";
	        }
	        else {
	
	            password.type = "password";
	            rePassword.type = "password";
	        }
	    }
    
    
    </script>
</head>
<body>

<jsp:include page="header.jsp" />
<br>
    <div class="container">
    
   
        <!-- Left side: Image -->
        <div class="left-side">
            <img src="images/home/chanel3.png" alt="Login Image">
        </div>
     

       <!-- Right side: Form -->
        <div class="right-side">
            <h1 class="title">Customer Login</h1>

            <div class="login-box">
                <form action="loginServlet" method="POST">
                    <input type="text" placeholder="Username" id="username" name="username">
                    <input type="password" placeholder="Password" id="password" name="password">
                    <input type="checkbox" name="shwPass" id="shwPass" value="yes" onclick="showPassword()" style="display: inline; float:inline;"> &nbsp;&nbsp;
       				<label for="shwpass" class="terms"><p style="font-size: 12.5px; float:inline;">Show Password</p></label>
                    <br><br>
                    <button class="aesthetic-button" type="submit" value="Login">Login</button>
                    <br><br>
                    </form>
                    <button class="transparent-button" type="submit" value="signup">
                        <a href="customerRegister.jsp">Don't have an Account? Sign-up</a>
                    </button>
                    <button class="transparent-button" type="submit" value="signup">
                        <a href="customerRegister.jsp">Forgot Password? Re-set Password</a>
                    </button>
                    <p class="other-logins">Other Logins</p>
                    <button class="transparent-button" type="submit" value="signup">
                        <a href="admin_login.jsp">Admin Login</a>
                    </button>
                    <button class="transparent-button" type="submit" value="signup">
                        <a href="supplierLogin.jsp">Supplier Login</a>
                    </button>
                
            </div>
        </div>
        </div>
      

    <br>
   
    
</body>
</html>
