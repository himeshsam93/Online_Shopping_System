<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %> 
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>Customer Details</title>
		<meta charset="UTF-8">
		
		
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
	
		<div id="root">
		
			<div class="background-container">
			
				<!--  admin menu bar -->
				<jsp:include page="admin_menu_bar.jsp" />
				
				<!-- landing page content-->
				
				<div class="bg_image_container" style="height:1500px;">
				
					<div class="dashboard-content">
						<br><br><br><br><br><br>
						<h1 style="text-align:center; font-size:55px;" id="headings"> List of Customers</h1>
						
						<br><br>
                        <h2 style="padding-left:120px;display:inline-block;color:#004e92" class="summary">Summary</h2>
                        
                         
                        <br><br><br>
                        
                      	<div style="padding-left:120px">
                      		<div class="rcontainer" style="height:170px;width:350px;">

	                             <center>
	                               	
	                               	<h2 style="font-size:28px;margin-top:5px;" class="summary">Customer Overview</h2>
	                               	<p style="display:inline;font-size:18px;"> Total customers : ${rowCount}</p>
	                               	<button style='background-color: green;color:white;padding: 10px; border-radius:10px; border-color:white;margin-top:5px;width:180px;font-weight:bold;'> <a href="addCustomer.jsp" style='color:white;text-decoration:none;'>Add New Customer</a></button>
	                             </center>
                       		</div>
                     	</div>
                   
                   		<br><br><br><br>
                   		<center>
                   		<div style="width:90%;" align="center">
                   		
                   			 
	                        <table border="2" width="90%" cellpadding="10" align="center" style="text-align:center;background-color:white;" class="table table-hover table-bordered">
	                        
	                        	<tr>
	                        		
	                        		<c:forEach var="col" items="${columnNames}">
						                <th style="background-color:#E6E6FA;">${col}</th>
						            </c:forEach>
	                        		
	                       			<!-- <th>Supplier ID</th>
	                       			<th>First Name</th>
	                       			<th>Last Name</th>
	                       			<th>Contact No</th>
	                       			<th>Email</th>
	                       			<th>Account Type</th>
	                       			<th>Username</th>
	                       			<th>Password</th>
	                       			<th>Re Password</th>         -->                		
	                        		
	                        	</tr>
	                        
	                        	<c:forEach var="Cuss" items="${CustomerDetails}">
	                        
	                        		<c:set var="id" value="${Cuss.customerID}"/> 
	                        		<c:set var="firstName" value="${Cuss.first_name}"/> 
	                        		<c:set var="lastName" value="${Cuss.last_name}"/> 
	                        		<c:set var="contact" value="${Cuss.contact_no}"/>
	                        		<c:set var="email" value="${Cuss.email}"/> 
	                        		<c:set var="acc" value="${Cuss.account_type}"/> 
	                        		<c:set var="username" value="${Cuss.userN}"/> 
	                        		<c:set var="pass" value="${Cuss.passw}"/> 
	                        		<c:set var="repass" value="${Cuss.repassw}"/> 
	                        		
		                        	<!-- internally calling the supplier model class getters -->
		                        	
	                        		<tr>
	                        		
	                        			<td>
	                        				${Cuss.customerID}
	                        			</td>
	                        			<td>
	                        				${Cuss.first_name}
	                        			</td>
	                        			<td>
	                        				${Cuss.last_name}
	                        			</td>
	                        			<td>
	                        				${Cuss.contact_no}
	                        			</td>
	                        			<td>
	                        				${Cuss.email}
	                        			</td>
	                        			<td>
	                        				${Cuss.account_type}
	                        			</td>
	                        			<td>
	                        				${Cuss.userN}
	                        			</td>
	                        			<td>
	                        				${Cuss.passw}
	                        			</td>
	                        			
	                        			<td>
	                        				${Cuss.repassw}
	                        			</td>
	                        			
	                        			<c:url value="updateCustomer.jsp" var="CustomerUpdates">
	                        
					                        <c:param name="id" value="${id}"/>
					                        <c:param name="fname" value="${firstName}"/>
					                        <c:param name="lname" value="${lastName}"/>
					                        <c:param name="contact" value="${contact}"/>
					                        <c:param name="email" value="${email}"/>
					                        <c:param name="acc" value="${acc}"/>
					                        <c:param name="username" value="${username}"/>
					                        <c:param name="pass" value="${pass}"/>
					                        <c:param name="repass" value="${repass}"/>
					                               
					                        
					                     </c:url>
	                        			<td colspan="2">
	                        				
	                        				<a href="${CustomerUpdates}" style='text-decoration: none; color:white;'>
	                        					<button style='background-color: green;color:white;padding: 3px; border-radius:3px; border-color:white;font-size:12px;'> Edit</button>
	                        				</a>
	                        				
	                        				<form name="frmDeleteCus" action="customerDeleteServlet1" method="post" onsubmit="return confirmDelete();">
	                        				
	                        					<input type="hidden" name="id" value="${Cuss.customerID}"/>
	                        					
                                            		<button style='background-color: red;color:white;padding: 3px; border-radius:3px; border-color:white;font-size:12px;'> Delete </button>
	                        			
	                        				</form>
	                        				
	                        				<script>
	                        				
											    function confirmDelete() {
											        return confirm("Do you want to delete this customer?");
											    }
											
											    function handleDelete() {
											        if (confirmDelete()) {
											            // If the user clicked "OK", submit the form
											            document.frmDeleteCus.submit();
											        } 
											        else {
											            // If the user clicked "Cancel", do nothing
											            alert("Deletion cancelled.");
											        }
											    }
											</script>
                                            
	                        			</td>
	                        		
	                        		</tr>
	    
	                         	</c:forEach>
	                         	
	                         	
	                         	<c:if test="${empty CustomerDetails}">
								    <p>No customers found!</p>
								</c:if>
	                        
	                        
	                        </table>
	                        
	                       
                   		</div>
                   		</center>
                    
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