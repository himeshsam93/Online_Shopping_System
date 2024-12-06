<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
 <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %> 
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>Order Details</title>
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
				
				<div class="bg_image_container">
				
					<div class="dashboard-content">
						<br><br><br><br><br><br>
						<h1 style="text-align:center; font-size:55px;" id="headings"> List of Orders</h1>
						
						<br><br>
                        <h2 style="padding-left:120px;display:inline-block;color:#004e92" class="summary">Summary</h2>
                        
                        <br><br><br>
                        
                        
                        
                         <table border="0" width="75%" cellspacing="30" cellpadding="10" align="center">
                            <!-- table row 1-->
                            <tr>
                                <td>
                                    <div class="rcontainer" style="height:150px;">
										
                                        <center>
                                        	<img src="images/admin/pending.png" style="width:45px; height:45px;"><br>
                                        	<h2 style="font-size:28px;margin-top:5px;" class="summary">0</h2>
                                         	<p style="display:inline;font-size:18px;"> Pending Payment </p>
                                        </center>
                                        
                                       
                                    </div>
                                </td>
                                <td>
                                    
                                    <div class="rcontainer" style="height:150px;">

                                       <center>
                                        	<img src="images/admin/completed.png" style="width:45px; height:45px;"><br>
                                        	<h2 style="font-size:28px;margin-top:5px;" class="summary">100</h2>
                                         	<p style="display:inline;font-size:18px;"> Completed </p>
                                        </center>
                                    
                                </td>
                                <td>
                                   
                                   <div class="rcontainer" style="height:150px;">

                                      <center>
                                        	<img src="images/admin/refund.png" style="width:45px; height:45px;"><br>
                                        	<h2 style="font-size:28px;margin-top:5px;" class="summary">0</h2>
                                         	<p style="display:inline;font-size:18px;"> Refunded</p>
                                        </center>
                                   </div>
                                   
                                </td>
                                
                                 <td>
                                   
                                   <div class="rcontainer" style="height:150px;">
 										<center>
                                        	<img src="images/admin/failed.png" style="width:45px; height:45px;"><br>
                                        	<h2 style="font-size:28px;margin-top:5px;" class="summary">0</h2>
                                         	<p style="display:inline;font-size:18px;"> Failed </p>
                                        </center>
                                   </div>
                                   
                                </td>
                                
                                
                            </tr>
                            
                            <tr>
                            
                            	<td colspan="2">
                                    <div class="rcontainer" style="height:200px;width:100%">
										
                                        <center>
                                        	<img src="images/admin/best_seller.png" style="width:45px; height:45px;"><br>
                                        	<h2 style="font-size:28px;margin-top:5px;" class="summary">Congratulations Nike! 🎉 </h2>
                                         	<p style="display:inline;font-size:18px;"> Best seller of the month </p>
                                         	<h2 style="font-size:28px;margin-top:5px;" class="summary">Rs. 1,600,000.00 </h2>
                                        </center>
                                        
                                       
                                    </div>
                                </td>
                                <td  colspan="2">
                                    
                                    <div class="rcontainer" style="height:200px;width:100%">

                                       <center>
                                        	<img src="images/admin/order.png" style="width:45px; height:45px;"><br>
                                        	<h2 style="font-size:28px;margin-top:5px;" class="summary">Order Overview</h2>
                                         	<p style="display:inline;font-size:18px;"> Total Orders in the Store : ${rowCount}</p>
                                        </center>
                                    
                                </td>
                            </tr>

                        </table>
                        
                         <br><br><br><br>
                   		<center>
                   		<div style="width:90%;" align="center">
                   		
                   			 
	                        <table border="2" width="90%" cellpadding="10" align="center" style="text-align:center;background-color:white;" class="table table-hover table-bordered">
	                        
	                        	<tr>
	                        		
	                        		<c:forEach var="col" items="${columnName}">
						                <th style="background-color:lightblue;">${col}</th>
						            </c:forEach>
	                        		
	                       			
	                        		
	                        	</tr>
	                        
	                        	<c:forEach var="Ord" items="${OrderDetails}">
	                        
	                        		<c:set var="id" value="${Ord.order_ID}"/> 
	                        		<c:set var="productName" value="${Ord.product_Name}"/> 
	                        		<c:set var="color" value="${Ord.color}"/>
	                        		<c:set var="size" value="${Ord.size}"/>
	                        		<c:set var="qty" value="${Ord.qty}"/> 
	                        		<c:set var="price" value="${Ord.price}"/>
	                        		
	                        		
		                        	<!-- internally calling the supplier model class getters -->
		                        	
	                        		<tr>
	                        		
	                        			<td>
	                        				${Ord.order_ID}
	                        			</td>
	                        			<td>
	                        				${Ord.product_Name}
	                        			</td>
	                        			<td>
	                        				${Ord.color}
	                        			</td>
	                        			<td>
	                        				${Ord.size}
	                        			</td>
	                        			<td>
	                        				${Ord.qty}
	                        			</td>
	                        			<td>
	                        				${Ord.price}
	                        			</td>
	                        			
	                        			
	                        			<c:url value="updateOrder.jsp" var="OrderUpdates">
	                        
					                        <c:param name="id" value="${id}"/>
					                        <c:param name="Pname" value="${productName}"/>
					                        <c:param name="Color" value="${color}"/>
					                        <c:param name="Sizee" value="${size}"/>
					                        <c:param name="Qty" value="${qty}"/>
					                         <c:param name="Price" value="${price}"/>
					                        
					                        
					                     </c:url> 
	                        			<td colspan="2">
	                        				
	                        				<a href="${OrderUpdates}" style='text-decoration: none; color:white;'>
	                        					<button style='background-color: green;color:white;padding: 3px; border-radius:3px; border-color:white;font-size:12px;'> Edit</button>
	                        				</a>
	                        				
	                        				<form name="frmDeleteOrder" action="orderDeleteServlet" method="post" onsubmit="return confirmDelete();">
	                        				
	                        					<input type="hidden" name="id" value="${Ord.order_ID}"/>
	                        					
                                            		<button style='background-color: red;color:white;padding: 3px; border-radius:3px; border-color:white;font-size:12px;'> Delete </button>
	                        			
	                        				</form>
	                        				<script>
	                        				
											    function confirmDelete() {
											        return confirm("Do you want to delete this product?");
											    }
											
											    function handleDelete() {
											        if (confirmDelete()) {
											            // If the user clicked "OK", submit the form
											            document.frmDeleteOrder.submit();
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
	                         	
	                         	
	                         	<c:if test="${empty OrderDetails}">
								    <p>No Orders found!</p>
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