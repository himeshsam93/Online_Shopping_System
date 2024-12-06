<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %> 
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>Admin Dashboard</title>
		
		 <meta name="viewport" content="width=device-width, initial-scale=1.0">
		 
		 <link rel="stylesheet" type="text/css" href="css/home.css">
		 <link rel="stylesheet" type="text/css" href="css/footer.css">
		  <link rel="stylesheet" type="text/css" href="css/admin_dashboard.css">
		 
		 
		<style>
            @import url('https://fonts.googleapis.com/css2?family=Poppins:ital,wght@0,100;0,200;0,300;0,400;0,500;0,600;0,700;0,800;0,900;1,100;1,200;1,300;1,400;1,500;1,600;1,700;1,800;1,900&display=swap');
            @import url('https://fonts.googleapis.com/css2?family=Montserrat+Alternates:ital,wght@0,100;0,200;0,300;0,400;0,500;0,600;0,700;0,800;0,900;1,100;1,200;1,300;1,400;1,500;1,600;1,700;1,800;1,900&family=Montserrat:ital,wght@0,100..900;1,100..900&display=swap');
            @import url('https://fonts.cdnfonts.com/css/evolventa');
            @import url('https://fonts.googleapis.com/css2?family=Montserrat+Alternates:ital,wght@0,100;0,200;0,300;0,400;0,500;0,600;0,700;0,800;0,900;1,100;1,200;1,300;1,400;1,500;1,600;1,700;1,800;1,900&family=Montserrat:ital,wght@0,100..900;1,100..900&family=Syne:wght@400..800&display=swap');
        
        </style>
	</head>
	
	<body>
	<%
    // Check if the session attributes are already set
    String username = (String) session.getAttribute("txtUsername");
    String accType = (String) session.getAttribute("txtAccType");

    // If the attributes are not set, get the values from the request and set them
    if (username == null || accType == null) {
        username = request.getParameter("txtUsername");
        accType = request.getParameter("txtAccType");

        if (username != null && accType != null) {
            session.setAttribute("txtUsername", username);
            session.setAttribute("txtAccType", accType);
        }
    }
    
  
%>
	
		<div id="root">
		
			<div class="background-container">
			
				<!--  admin menu bar -->
				<jsp:include page="admin_menu_bar.jsp" />
				
				<!-- landing page content-->
				
				<div class="bg_image_container">
				
					<div class="dashboard-content">
						<br><br><br><br><br><br>
						<h1 style="text-align:center; font-size:55px;" id="headings"> Dashboard </h1>
						
						<br><br>
                        <h2 style="padding-left:120px;display:inline-block;color:#004e92" class="summary">Summary</h2>
                        
                        <br><br><br>
                        
                         <table border="0" width="75%" cellspacing="30" cellpadding="10" align="center">
                            <!-- table row 1-->
                            <tr>
                                <td>
                                    <div class="rcontainer">
										
                                        <center>
                                        	<img src="images/admin/income1.png" style="width:55px; height:55px;">
                                        	<h2 style="font-size:28px;" class="summary"><div style="font-size:20px;display:inline;">Total Income</div><br>Rs. 8,260,000.00</h2>
                                         	<p style="display:inline;"><div style="color:green;display:inline;"> ↑ +10.3%</div> Increased </p>
                                        </center>
                                        
                                       
                                    </div>
                                </td>
                                <td>
                                    
                                    <div class="rcontainer">

                                       <center>
                                        	<img src="images/admin/expense1.png" style="width:55px; height:55px;">
                                        	<h2 style="font-size:28px;" class="summary"><div style="font-size:20px;display:inline;">Total Expense</div><br>Rs. 5,000,000.00</h2>
                                         	<p style="display:inline;"><div style="color:red;display:inline;"> ↑ +5.0%</div> Increased </p>
                                        </center>
                                    
                                </td>
                                <td>
                                   
                                   <div class="rcontainer">

                                      <center>
                                        	<img src="images/admin/orders1.png" style="width:55px; height:55px;">
                                        	<h2 style="font-size:28px;" class="summary"><div style="font-size:20px;display:inline;">New Orders</div><br>1050</h2>
                                         	<p style="display:inline;"><div style="color:green;display:inline;"> ↑ +2.00%</div> (30 Days) </p>
                                        </center>
                                   </div>
                                   
                                </td>
                                
                                 <td>
                                   
                                   <div class="rcontainer">
 										<center>
                                        	<img src="images/admin/customers1.png" style="width:55px; height:55px;">
                                        	<h2 style="font-size:28px;" class="summary"><div style="font-size:20px;display:inline;">New Customers</div><br>225</h2>
                                         	<p style="display:inline;"><div style="color:red;display:inline;"> ↓ -1.00%</div> (30 Days) </p>
                                        </center>
                                   </div>
                                   
                                </td>
                            </tr>
                             <!-- table row 2 -->
                            <tr>
                                <td colspan="2">
                                 <div class="rcontainer" style="width:100%;height: 300px; ">
             						<table border="0" width="100%" cellspacing="30" cellpadding="10" align="center">
             							<tr>
             								<td>
             								
             								<div style="font-size:20px;display:inline;" class="summary">Today's Orders</div>
											<br>
											<p style="display:inline;font-size:15px;"> Monday 20th October, 2024</p><br>
											<h2 style="font-size:28px; margin-top:10px;" class="summary">Rs. 150,000.00</h2>
             								
             								</td>
             								<td>
             								<img src="images/admin/income2.png" style="width:60px; height:60px;">
             								</td>
             							
             							</tr>
             						</table>
                                  
									
									<hr style="color:black;" size="10" >
                                      <center>
                                      
                                      		<table border="0" width="90%" cellspacing="30" cellpadding="10" align="center">
                                      		
                                      			<tr>
                                      			
                                      				<td><p style="display:inline;font-weight:bold;"><div style="color:black;"> Sold </div> <b>25</b> </p></td>
                                      				<td><p style="display:inline;font-weight:bold;"><div style="color:black;"> Returns </div> <b> 0 </b> </p></td>
                                      				<td><p style="display:inline;font-weight:bold;"><div style="color:black;"> Picked </div> <b>20</b> </p></td>
                                      				<td><p style="display:inline;font-weight:bold;"><div style="color:black;"> In transit </div> <b>5</b> </p></td>
                                      			
                                      			</tr>
                                      		
                                      		</table>
                                        	
                                         	
                                      </center>
                                    </div>
                                </td>
                                <td colspan="2">
                                   
                                  <div class="rcontainer" style="width:100%;height: 300px; ">
									<div style="font-size:20px;display:inline;" class="summary">Earning Reports</div>
									<br>
									<p style="display:inline;font-size:15px;"> Monthly Earnings Overview</p>
									<h2 style="font-size:28px; margin-top:10px;" class="summary">Rs. 1,580,000.00 &nbsp;<div style="width:15px;;height: 18px; background-color:lightgreen; display:inline; font-size:15px;">&nbsp;+5.00%&nbsp;</div></h2>
									<p style="display:inline;font-size:15px;"> You informed of this week compared to last week</p>
									
									<hr style="color:black;" size="10" >
									
                                      <center>
                                      
                                      		<table border="0" width="100%" cellspacing="30" cellpadding="10" align="center">
                                      		
                                      			<tr>
                                      			
                                      				<td><p style="display:inline;font-weight:bold;"><div style="width:15px;;height: 18px; background-color:lightgreen; display:inline; font-size:15px;"> &nbsp;&nbsp;$ &nbsp;</div> <b>Earnings <br> Rs.2,000,000.00</b> </p></td>
                                      				<td><p style="display:inline;font-weight:bold;"><div style="width:15px;;height: 18px; background-color:lightblue; display:inline; font-size:15px;"> &nbsp;&nbsp;★ &nbsp;</div> <b>Profit <br> Rs.1,000,000.00</b> </p></td>
                                      				<td><p style="display:inline;font-weight:bold;"><div style="width:15px;;height: 18px; background-color:orange; display:inline; font-size:15px;"> &nbsp;&nbsp;Ê &nbsp;</div> <b>Expense <br> Rs.1,000,000.00</b> </p></td>
                                      				
                                      			
                                      			</tr>
                                      		
                                      		</table>
                                        	
                                         	
                                      </center>
                                    </div>
                                   
                                </td>
                            </tr>

                        </table>
                        
                        
					
					</div>
					<!-- footer content-->
			        <div class="footer-content">
			
			            <br><br><br>
			
			            <table border="0" width="100%" style="padding-bottom: 0px;margin-top:400px;">
			
			                <tr>
			                    <td>
			                        <p style="padding-left: 80px; font-size: 12px; display: inline;color:black;">&copy; 2024 La Sephora. All Rights Reserved.</p>
			                    </td>
			                    <td align="right" style="padding-right: 60px;">
			                         
			                        <img src="images/admin/mail.png" width="18" height="18" style="display: inline-block;">
			                        <p style="font-size: 12px; display: inline;">info@lasephora.com</p>
			
			                    </td>
			                </tr>
			            </table>
			        </div>  
				
				
				</div>
				
			
			

            </div>
		</div>
		
		
	</body>
</html>