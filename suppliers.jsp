<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%-- <%@taglib prefix="c" uri="jakarta.tags.core" %> 
<%@taglib prefix="fmt" uri="jakarta.tags.fmt" %> --%>
 <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %> 

<%-- <%@ taglib prefix="c" uri="jakarta.tags.core" %> --%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>Supplier Details</title>
		<meta charset="UTF-8">
		<link rel="icon" type="image/ico" href="images/logo/favicon.ico">
        <link rel="shortcut icon" type="image/x-icon" href="images/logo/favicon.ico"/>
        <link rel="apple-touch-icon" href="images/logo/favicon.ico">
		
		 <meta name="viewport" content="width=device-width, initial-scale=1.0">
		 
		 <link rel="stylesheet" type="text/css" href="css/home.css">
		 <link rel="stylesheet" type="text/css" href="css/footer.css">
		  <link rel="stylesheet" type="text/css" href="css/admin_dashboard.css">
		 
		 
		<style>
            @import url('https://fonts.googleapis.com/css2?family=Poppins:ital,wght@0,100;0,200;0,300;0,400;0,500;0,600;0,700;0,800;0,900;1,100;1,200;1,300;1,400;1,500;1,600;1,700;1,800;1,900&display=swap');
            @import url('https://fonts.googleapis.com/css2?family=Montserrat+Alternates:ital,wght@0,100;0,200;0,300;0,400;0,500;0,600;0,700;0,800;0,900;1,100;1,200;1,300;1,400;1,500;1,600;1,700;1,800;1,900&family=Montserrat:ital,wght@0,100..900;1,100..900&display=swap');
            @import url('https://fonts.cdnfonts.com/css/evolventa');
            @import url('https://fonts.googleapis.com/css2?family=Montserrat+Alternates:ital,wght@0,100;0,200;0,300;0,400;0,500;0,600;0,700;0,800;0,900;1,100;1,200;1,300;1,400;1,500;1,600;1,700;1,800;1,900&family=Montserrat:ital,wght@0,100..900;1,100..900&family=Syne:wght@400..800&display=swap');
        
			
			.table-bordered{

			  border: 2px solid #ddd; /* Set the initial border style */
			
			  box-shadow: inset 0px 1px 0px #ddd; /* Add a subtle inner shadow to create the double line effect */
			
			}
        </style>
        
        <script>
        
        function confirmDelete() {
            return confirm("Do you want to delete this supplier?");
   		 }
        
        
        </script>
		
	</head>
	<body>
	
		<div id="root">
		
			<div class="background-container">
			
				<!--  admin menu bar -->
				<jsp:include page="admin_menu_bar.jsp" />
				
				<!-- landing page content-->
				
				<div class="bg_image_container"  style="height:1300px;">
				
					<div class="dashboard-content">
						<br><br><br><br><br><br>
						<h1 style="text-align:center; font-size:55px;" id="headings"> List of Suppliers</h1>
						
						<br><br>
                        <h2 style="padding-left:120px;display:inline-block;color:#004e92" class="summary">Summary</h2>
                        
                        <br><br><br>
                        
                      	<div style="padding-left:120px">
                      		<div class="rcontainer" style="height:170px;width:350px;">

	                             <center>
	                               	
	                               	<h2 style="font-size:28px;margin-top:5px;" class="summary">Supplier Overview</h2>
	                               	<p style="display:inline;font-size:18px;"> Total Suppliers in the Store : ${rowCount}</p>
	                               	<button style='background-color: green;color:white;padding: 10px; border-radius:10px; border-color:white;margin-top:5px;width:180px;font-weight:bold;'> <a href="addSupplier.jsp" style='color:white;text-decoration:none;'>Add New Supplier</a></button>
	                             </center>
                       		</div>
                     	</div>
                   
                   		<br><br><br><br>
                   		<center>
                   		<div style="width:90%;" align="center">
                   		
                   			 
	                        <table border="2" width="90%" cellpadding="10" align="center" style="text-align:center;background-color:white;" class="table table-hover table-bordered">
	                        
	                        	<tr>
	                        		
	                        		<c:forEach var="col" items="${columnNames}">
						                <th style="background-color:#FFB6C1;">${col}</th>
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
	                        
	                        	<c:forEach var="Supp" items="${SupplierDetails}">
	                        
	                        		<c:set var="id" value="${Supp.supplierID}"/> 
	                        		<c:set var="firstName" value="${Supp.first_name}"/> 
	                        		<c:set var="lastName" value="${Supp.last_name}"/> 
	                        		<c:set var="contact" value="${Supp.contact_no}"/>
	                        		<c:set var="email" value="${Supp.email}"/> 
	                        		<c:set var="acc" value="${Supp.account_type}"/> 
	                        		<c:set var="username" value="${Supp.userN}"/> 
	                        		<c:set var="pass" value="${Supp.passw}"/> 
	                        		<c:set var="repass" value="${Supp.repassw}"/> 
	                        		
		                        	<!-- internally calling the supplier model class getters -->
		                        	
	                        		<tr>
	                        		
	                        			<td>
	                        				${Supp.supplierID}
	                        			</td>
	                        			<td>
	                        				${Supp.first_name}
	                        			</td>
	                        			<td>
	                        				${Supp.last_name}
	                        			</td>
	                        			<td>
	                        				${Supp.contact_no}
	                        			</td>
	                        			<td>
	                        				${Supp.email}
	                        			</td>
	                        			<td>
	                        				${Supp.account_type}
	                        			</td>
	                        			<td>
	                        				${Supp.userN}
	                        			</td>
	                        			<td>
	                        				${Supp.passw}
	                        			</td>
	                        			
	                        			<td>
	                        				${Supp.repassw}
	                        			</td>
	                        			
	                        			<c:url value="updateSupplier.jsp" var="SupplierUpdates">
	                        
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
	                        				
	                        				<a href="${SupplierUpdates}" style='text-decoration: none; color:white;'>
	                        					<button style='background-color: green;color:white;padding: 3px; border-radius:3px; border-color:white;font-size:12px;'> Edit</button>
	                        				</a>
	                        				
	                        				<form name="frmDeleteSup" action="supplierDeleteServlet" method="post" onsubmit="return confirmDelete();">
	                        				
	                        					<input type="hidden" name="id" value="${Supp.supplierID}"/>
	                        					
                                            		<button style='background-color: red;color:white;padding: 3px; border-radius:3px; border-color:white;font-size:12px;'> Delete </button>
	                        			
	                        				</form>
	                        				
	                        				<script>
	                        				
											    function confirmDelete() {
											        return confirm("Do you want to delete this supplier?");
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
	                         	
	                         	
	                         	<c:if test="${empty SupplierDetails}">
								    <p>No suppliers found!</p>
								</c:if>
	                        
	                        
	                        </table>
	                        
	                       
                   		</div>
                   		</center>
                    
					</div>
				
				
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
	
	</body>
</html>