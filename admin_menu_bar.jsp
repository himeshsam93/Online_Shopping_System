<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
     <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %> 
<!DOCTYPE html>
<html>
	<head>
	<meta charset="UTF-8">
	 <meta name="viewport" content="width=device-width, initial-scale=1.0">
	
	<link rel="stylesheet" type="text/css" href="css/home.css">
	<link rel="stylesheet" type="text/css" href="css/admin_dashboard.css">
	
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
				            <a class="menu_li active" aria-current="page" href="admin_dashboard.jsp">Dashboard</a>
				          </li>
				          <br>
				          
				          <li class="nav-item">
				            <a class="menu_li active" aria-current="page" href="customerRetrieveServlet">Customers</a>
				          </li>
				         <br>
				         
				         <li class="nav-item">
				            <a class="menu_li active" aria-current="page" href="orderRetrieveServlet">Order</a>
				          </li>
				          <br>
				          
				         <!-- For Supplier -->
				          
				          <li class="nav-item dropdown">
				            <a class="menu_li dropdown-toggle" href="#" role="button" data-bs-toggle="dropdown" aria-expanded="false">
				              Logistics
				            </a>
				            <ul class="dropdown-menu">
				              <li><a class="dropdown-item menu_li" href="supplierRetrieveServlet" style="font-size:16px;">Suppliers</a></li>
				              <li><a class="dropdown-item menu_li" href="productRetrieveServlet" style="font-size:16px;">Products</a></li>
				           
				            </ul>
				          </li>
				        
				     
				        </ul>
				        <br>
				        <!-- Search bar -->
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
				    
					   <a href="admin_dashboard.jsp" target="_self"><img src="images/home/LaSephora_Logo.png" alt="La Sephora Logo" title="Logo" class="menu_bar_logo" style="margin-left:0px;margin-right:350px;"></a>
					   
						<!-- <form name="session" action="admin_dashboard.jsp">
					  	
					  		<input type="hidden" name="adminUsername" value="admin@lasephora" />
					  		
					  		
					  	</form> -->
					  	
					  	<!-- session -->
				 
					  <%--  <%
					   
					  String username = request.getParameter("txtUsername");
					  String accType = request.getParameter("txtAccType");
					  String user_session_id = "1";
					  session.setAttribute("txtUsername", username);
					  session.setAttribute("txtAccType", accType);
					 /*  String userN = session.getAttribute("txtUsername").toString(); */
					  
					  
					   
					   %> --%>
					   
					   <%
					   
					   String userN = (String) session.getAttribute("txtUsername");
					   
					   if(userN != null && !userN.isEmpty()){
						   
						   out.println("<div style='float:inline-end;display:inline; padding-left:100px; padding-top:0px; background-color:transparent;margin-right:80px;'>");
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
				                                   		"<br><br><span style='font-size:14px; color:black; font-weight:600;'>" + userN + "</span>" +
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
					   
					 
					  
					   <!-- logout  -->
					   <%--  <p class="menu_li" style="font-size:15px;display:inline-block; float:inline;  margin-top:5px;margin-left:20px;"><a href="#" ><%=username%></a></p>
					   <a href="#" target="_self"><img src="images/home/user_icon.png" style="width:23px; height:23px;float:left; margin-top:5px;"></a>
					   
					    <p class="menu_li" style="font-size:15px;display:inline-block; float:inline;  margin-top:5px;margin-right:10px;margin-left:20px;"><a href=<%session.invalidate();%>"index.jsp">Logout</a></p>
					     --%>
					  
				 
				     </div>
				  
				  </div>
				</nav>					
			</div>
				
		
		</body>
</html>