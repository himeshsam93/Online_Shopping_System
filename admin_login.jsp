<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %> 
<!DOCTYPE html>
<html>
	<head>
	
		<meta charset="UTF-8">
		<title>Admin Login</title>
		 <meta name="viewport" content="width=device-width, initial-scale=1.0">
		 
		 <link rel="stylesheet" type="text/css" href="css/home.css">
		  <link rel="stylesheet" type="text/css" href="css/footer.css">
		   <link rel="stylesheet" type="text/css" href="css/sign_in.css">
		 
		<!--  <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH" crossorigin="anonymous">
		 <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-YvpcrYf0tY3lHB60NNkmXc5s9fDVZLESaAA55NDzOxhy9GkcIdslK1eN7N6jIeHz" crossorigin="anonymous"></script> -->
		 <style>
            @import url('https://fonts.googleapis.com/css2?family=Poppins:ital,wght@0,100;0,200;0,300;0,400;0,500;0,600;0,700;0,800;0,900;1,100;1,200;1,300;1,400;1,500;1,600;1,700;1,800;1,900&display=swap');
            @import url('https://fonts.googleapis.com/css2?family=Montserrat+Alternates:ital,wght@0,100;0,200;0,300;0,400;0,500;0,600;0,700;0,800;0,900;1,100;1,200;1,300;1,400;1,500;1,600;1,700;1,800;1,900&family=Montserrat:ital,wght@0,100..900;1,100..900&display=swap');
            @import url('https://fonts.cdnfonts.com/css/evolventa');
            @import url('https://fonts.googleapis.com/css2?family=Montserrat+Alternates:ital,wght@0,100;0,200;0,300;0,400;0,500;0,600;0,700;0,800;0,900;1,100;1,200;1,300;1,400;1,500;1,600;1,700;1,800;1,900&family=Montserrat:ital,wght@0,100..900;1,100..900&family=Syne:wght@400..800&display=swap');
        
        </style>
        
          <!-- script tag included here -->
	       <script src="js/admin.js"></script>
	
	</head>
	<body>
	
		<div id="root">
		
			<div class="background-container">
			
				<!--  menu bar -->
				<jsp:include page="menu_bar.jsp" />
				
				<!-- landing page content-->
				<div style="top:70px; margin-top:70px;">
					
					<!-- sign in container-->
           			 <div class="container_signin" style="height:770px;">

	                <div class="sign-in-main-container">
	                    <table border="0" width="100%">
	                        <tr>
	                            <!-- logo, tagline side -->
	                            <td width="60%" style="vertical-align: top;background-image: url('images/admin/bg2.png');width:600; height:650; background-position: center;background-size: cover;">
	                                <div class="left-side-container">
	                                   
	                                  
	                                    <div class="tagline-sign-up" style="padding-top: 240px;">
	
	                                        <div class="taglines navibus" style="display: inline-block; color:black;">Hello,</div> <br>
	                                        <div class="taglines" style="display: inline-block;color:black;">Welcome Back 😍👋🏻 !</div>
	
	                                    </div>
	                                    <!-- Social media icons -->
	                                    <div class="Scocial-media-icons" style="display: inline-block;padding-left: 55px;margin-top:340px;">

                                                <img src="images/home/fb.png" class="social_media" style="width: 17px;height: 17px; margin-right:8px;">
                                                <img src="images/home/X.png" class="social_media" style="width: 17px;height: 17px;margin-right:8px;">
                                                <img src="images/home/Instergram.png" class="social_media" style="width: 17px;height: 17px;margin-right:8px;">
                                                <img src="images/home/LinkedIN.png" class="social_media" style="width: 17px;height: 17px;margin-right:8px;">
                                                <img src="images/home/Googlee.png" class="social_media" style="width: 17px;height: 17px;margin-right:8px;">
                                                <img src="images/home/YT.png" class="social_media" style="width: 20px;margin-right:8px;">
                                         </div>
                                         
                                         <!-- footer content-->
					                    <div class="footer-content">
					
					                        <table border="0" width="100%" style="padding-bottom: 0;">
					
					                            <tr>
					                                <td>
					                                
					                                    <p style="padding-left: 53px; font-size: 12px; display: inline;">&copy; 2024 La Sephora. All Rights Reserved.</p>
					                                </td>
					                                
					                            </tr>
					                        </table>
	                    				</div>  
	                                </div>
	                            </td>
	                            <!-- Sign In form container-->
	                            <td width="40%" style="">
	                                 <!--Form content-->
	                                <div class="right-side-conatiner" style="margin-left: 60px; margin-right:60px;" >
	                                    <br><br>
	                                    <div class="container">
	                                       
	                                        <form name="frmSignIn" id="FrmSignIn" method="POST" action="adminLoginServlet ">
	                                          
	                                            <center><label for="sign-in"><h1 id="headings" style="font-size:45px;margin-top:15px;">Admin Login</h1></label></center>
	                                            <div style= "margin-left: 60px;"> 
		                                            <br>
		                                            <label for="username"><p style="color:black;">Username</p> <span class="req_class">*</span></label>
		                                            <br>
		                                            <input type="text" name="txtUsername" id="txtUsername" placeholder="Enter your Username" required style="height: 40px;">
													<input type="hidden" name="txtAccType" value="admin"/>
		                                            <br><br>
		                                            <label for="password"><p style="color:black;">Password</p> <span class="req_class">*</span></label>
		                                            <br>
		                                            <input type="password" name="txtPassword" id="txtPass" placeholder="Enter your Password" pattern="(?=.*\d)(?=.*[a-z])(?=.*[A-Z]).{8,}" title="Must contain at least one number and one uppercase and lowercase letter, and at least 8 or more characters" required style="height: 40px;">
		
		                                            <br>
		                                            <input type="checkbox" name="shwPass" id="shwPass" value="yes" class="terms1" onclick="showPassword()"> &nbsp;&nbsp;
		                                            <label for="shwpass" class="terms"><p style="font-size: 12.5px; display: inline; float:left;margin-top:25px">Show Password</p></label>
		                                            
		
		                                            <label for="forgot-pass" class="terms"><p style="font-size: 12.5px; display: inline-end;margin-left:50px;margin-top:25px; color: rgb(85, 85, 85);"><a href="#" style="color: rgb(85, 85, 85);">Forgot Password ?</a></p></label>
		                                            
		
		                                           
		                                            <button type="submit" name="btnSignUp" id="btnSignUp" class="btn" style="background-color:black; color:white;">Sign In</button>
		                                            <br>
		
		                                            <br>
		                                            <hr aln="left" class="hrclass" style=" width: 120px;float:inline;display: inline-block;"><p style="font-size: 13px; display: inline-block; padding-left: 15px; padding-right: 15px; float:inline;"> OR</p> <hr aln="left" class="hrclass" style=" width: 120px;float:inline;display: inline-block;">
		
		                                            <br><br>
		
		                                            <!-- social media sign in buttons -->
		                                            <table border="0" width="80%">
		                                                <tr>
		                                                    <td>
		                                                        <a href="#" target="_blank">
		                                                            <button class="btn" type="button" style="width:90%; border-color:black;background-color:white; border: 2px solid #d7d7d7;" >
		                                                                <img src="images/admin/google.png" width="20" height="20" style="margin-bottom:5px;">
		                                                            </button>
		                                                        </a>
		
		                                                    </td>
		                                                    <td align="right">
		                                                        <a href="#" target="_blank">
		                                                            <button class="btn" type="button"  style="width:90%; border-color:black;background-color:white; border: 2px solid #d7d7d7;">
		                                                                <img src="images/admin/apple.png" width="20" height="20" style="margin-bottom:5px;">
		                                                            </button>
		                                                        </a>
		                                                    </td>
		                                                </tr>
		                                            </table>
		                                            <!-- Don't have a Account texts-->
		                                            <br>
		                                            <label for="Account-login-link">
		                                               <center> <p style="font-size: 12.5px; color: rgb(171, 171, 171); padding-left: 50px; margin-top: 10px;">Don't have an Account?<a href="./signup.php" style="font-weight: 500;"> Sign Up</a></p></center>
		                                            </label>
		                                       </div>
	                                        </form>
	                                        
	                                       
	                                    </div>
	                                </div>
	                                 		<!-- footer content-->
						                    <div class="footer-content">
						
						                        <table border="0" width="100%" style="padding-bottom: 0;">
						                        	<tr><br>
						
						                                <td align="right" style="padding-right: 60px;">
						                                     
						                                    <img src="images/admin/mail.png" width="18" height="18" style="display: inline-block; float:inline;">
						                                    <p style="font-size: 12px; display: inline;padding-right:8px;">info@lasephora.com</p>
						
						                                </td>
						                            </tr>
						                        </table>
						                    </div>  
	                            </td>
	                        </tr> 
	                    </table>
	                    <script>
	                    function showPassword(){
	                    	   
	                        var password = document.getElementById("txtPass");
	              

	                        if ((password.type == "password")){

	                            password.type = "text";
	                            
	                        }
	                        else {

	                            password.type = "password";
	                           
	                        }
	                    }
	                    
	                    
	                    </script>
	                 
	                  
	                </div>  
       
				</div>
				
			</div>
			 
		</div>
	</div>
	
	</body>
</html>