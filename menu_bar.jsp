<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
	<head>
	<meta charset="UTF-8">
	 <meta name="viewport" content="width=device-width, initial-scale=1.0">
	
	<link rel="stylesheet" type="text/css" href="css/home.css">
	<link rel="stylesheet" type="text/css" href="css/drp_profile.css">
	
	 <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH" crossorigin="anonymous">
	 <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-YvpcrYf0tY3lHB60NNkmXc5s9fDVZLESaAA55NDzOxhy9GkcIdslK1eN7N6jIeHz" crossorigin="anonymous"></script>

	</head>
	
		<body>
		
			<!--  menu bar -->
			<div class="nav-bar">
					
				<nav class="navbar bg-body-tertiary fixed-top" style="color:red;">
				
				<!-- menubar strip color -->
				  <div class="container-fluid" style="height:70px;"> 
		
				
				    <button class="navbar-toggler" type="button" data-bs-toggle="offcanvas" data-bs-target="#offcanvasNavbar" aria-controls="offcanvasNavbar" aria-label="Toggle navigation">
				      <span class="navbar-toggler-icon"></span>
				    </button>
				    
				    <!-- Responsive menu bar starting point with animation -->
				    <div class="offcanvas offcanvas-start" tabindex="-1" id="offcanvasNavbar" aria-labelledby="offcanvasNavbarLabel">
				      <div class="offcanvas-header">
				        <h1 style="font-size:25px;" class="menu_title" id="offcanvasNavbarLabel">La Sephora</h1>
				        <button type="button" class="btn-close" data-bs-dismiss="offcanvas" aria-label="Close"></button>
				      </div>
				      
				      
				      <div class="offcanvas-body">
				        <ul class="navbar-nav justify-content-end flex-grow-1 pe-3">
				          <li class="nav-item">
				            <a class="menu_li active" aria-current="page" href="index.jsp">Home</a>
				          </li>
				         
				        <!--  style="font-size: 18px;font-family: ''Poppins'', sans-serif;font-weight: 400;font-style: normal;color:#595959; -->
				         <!--  New arrivals -->
				         <br>
				          <li class="nav-item dropdown">
				            <a class="menu_li dropdown-toggle" href="#" role="button" data-bs-toggle="dropdown" aria-expanded="false">
				              New Arrivals
				            </a>
				            <ul class="dropdown-menu">
				              <li><a class="dropdown-item menu_li" href="men.jsp" style="font-size:16px;">For Men</a></li>
				              <li><a class="dropdown-item menu_li" href="#" style="font-size:16px;">For Women</a></li>
				            </ul>
				          </li>
				          <br>
				          
				          <!-- For women -->
				          
				          <li class="nav-item dropdown">
				            <a class="menu_li dropdown-toggle" href="#" role="button" data-bs-toggle="dropdown" aria-expanded="false">
				              Women
				            </a>
				            <ul class="dropdown-menu">
				              <li><a class="dropdown-item menu_li" href="#" style="font-size:16px;">Fall Collection 2024</a></li>
				              <li><a class="dropdown-item menu_li" href="#" style="font-size:16px;">LS Special Edition 2024-2025</a></li>
				              <li><a class="dropdown-item menu_li" href="#" style="font-size:16px;">Tops</a></li>
				               <li><a class="dropdown-item menu_li" href="#" style="font-size:16px;">Coats and Jackets</a></li>
				                <li><a class="dropdown-item menu_li" href="#" style="font-size:16px;">Denim and Pants</a></li>
				                 <li><a class="dropdown-item menu_li" href="#" style="font-size:16px;">Shorts</a></li>
				           
				            </ul>
				          </li>
				          
				          <br>
				          <!-- For men -->
				          
				          <li class="nav-item dropdown">
				            <a class="menu_li dropdown-toggle" href="men.jsp" role="button" data-bs-toggle="dropdown" aria-expanded="false">
				              Men
				            </a>
				            <ul class="dropdown-menu">
				              <li><a class="dropdown-item menu_li" href="#" style="font-size:16px;">Fall-Winter Collection 2024-2025</a></li>
				              <li><a class="dropdown-item menu_li" href="men.jsp" style="font-size:16px;">LS Essentials</a></li>
				              <li><a class="dropdown-item menu_li" href="#" style="font-size:16px;">Outerwear and Coats </a></li>
				              <li><a class="dropdown-item menu_li" href="#" style="font-size:16px;">T-shirt and Polo's </a></li>
				               <li><a class="dropdown-item menu_li" href="#" style="font-size:16px;">Shirts</a></li>
			                  <li><a class="dropdown-item menu_li" href="#" style="font-size:16px;">New Formal</a></li>
			                  <li><a class="dropdown-item menu_li" href="#" style="font-size:16px;" >Denim and Pants</a></li>
			         
				           
				            </ul>
				          </li>
				          
				          <!-- Search bar -->
				        </ul>
				        <br>
				        <form class="d-flex mt-3" role="search">
				          <input class="form-control me-2" type="search" placeholder="Search" aria-label="Search">
				          <button class="btn btn-outline-success" type="submit" style="font-size: 16px;font-family: ''Poppins'', sans-serif;font-weight: 400;font-style: normal;">Search</button>
				        </form>
				        <br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br>
				         <hr style="size:10px;padding-top: 20px; color:black;" >
				         <p class="terms" id="offcanvasNavbarLabel" style="font-size:15px;"><a href="">About La Sephora</a></p>
				         <p class="terms" id="offcanvasNavbarLabel" style="font-size:15px;"><a href="">Find a store</a></p>
				         <p class="terms" id="offcanvasNavbarLabel" style="font-size:15px;"><a href="">How can we help you?</a></p>
				      </div>
				    </div>
				    
				     <div style="margin-left: 0px;">
				     
				     	<!-- LaSephora_Logo -->
				    
					   <a href="index.jsp" target="_self"><img src="images/home/LaSephora_Logo.png" alt="La Sephora Logo" title="Logo" class="menu_bar_logo" style="margin-left: 0px;"></a>
					   
					   <!-- shopping cart -->
					   
					   <a href="orderShopServlet" target="_self"><img src="images/home/bag.svg" style="width:22px; height:22px;float:left; margin-top:13px;margin-right:20px"></a>
					   
					   
					   <%
					   
					   String username = "";
					   String user_session_id = ""; /* 1 --> Admin  */
					   session.setAttribute("username", username);
					   session.setAttribute("user_session_id", user_session_id);
					   
					   %>
					   
					   <%
					   
					   if(user_session_id.equals("1")){
						   
						   out.println("<div style='float:inline;display:inline;padding-top:0px; background-color:transparent;margin-right:80px;'>");
							 	String[] drpAdminRows = {"Dashboard", "Logout"};
							 	int len = drpAdminRows.length;
							 	String[] links = {"admin_dashboard.jsp", "logout.jsp"};
							 	
							 	out.println("<div class = 'dropdown'>" + 
									 		   "<button class='dropbtn' style='background-color:transparent;'>" +
			                                   "<img src='images/home/user_icon.png' style='width:23px; height:23px;float:left;'>" + 
			                                   "<img src='images/admin/arrow.png' class='drop_arrow'> </button>" + 
			                                   "<div class='dropdown_content'>" + 
			                                   		"<div style='padding: 14px;'>" +
				                                   		"<img src='images/home/user_icon.png' class='logging_icon' alt='sign up icon' style='display:inline;width:25px; height:25px;float:left;margin-left:10px;margin-bottom:15px;'>" + 
				                                   		"<br><br><span style='font-size:14px; color:black; font-weight:600;'>" + username + "</span>" +
				                                   	 "</div>" +
				                                   	"<hr style='margin: 5px 0;'>"
				                               
							 				);
							 	
												 	 // assigning the drop down members and their links
												 	for(int i = 0; i < len; i++){
												 		
												 		 out.println("<a href='" + links[i] + "'>" + drpAdminRows[i] + "</a>");
											        
												 	}
												out.println("</div>");
											out.println("</div>");
							out.println("</div>");
											
												
						 	
						 	
					   }
					   else{
						   
						   out.println("<a href='#' target='_self'> "+ 
					    	        "<img src='images/home/user_icon.png' style='width:23px; height:23px;float:left;margin-top:13px;'> </a>" +
					        		"<p class='menu_li' style='font-size:15px;display:inline-block; float:inline;  margin-top:5px;margin-right:10px;margin-left:30px;margin-top:13px;'>" +
					            	"<a href='login.jsp'>Sign in</a></p>");
						   
					   }
					   
					   
					   %>
					   
					<%-- <% 
					    // Check if session attribute "user_session_id" is not set
					    if (session.getAttribute("user_session_id") == null) {
					    	
					    	out.println("<a href='#' target='_self'> "+ 
					    	        "<img src='images/home/user_icon.png' style='width:23px; height:23px;float:left; margin-top:5px;''> </a>" +
					        		"<p class='menu_li' style='font-size:15px;display:inline-block; float:inline;  margin-top:5px;margin-right:10px;margin-left:20px;''>" +
					            	"<a href='#'>Sign</a></p>");
					    }
					%>
						 --%>				   
					  <!-- <!--  sign in 
					   <a href="#" target="_self"><img src="images/home/user_icon.png" style="width:23px; height:23px;float:left; margin-top:5px;"></a>
					   
					    <p class="menu_li" style="font-size:15px;display:inline-block; float:inline;  margin-top:5px;margin-right:10px;margin-left:20px;"><a href="#">Sign</a></p> -->
					  
					  	
				     </div>
				  
				  </div>
				</nav>					
			</div>
				
		
		</body>
</html>