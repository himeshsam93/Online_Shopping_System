<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %> 
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>Product Details</title>
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
        
        	.table-bordered {

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
				
				<div class="bg_image_container">
				
					<div class="dashboard-content">
						<br><br><br><br><br><br>
						<h1 style="text-align:center; font-size:55px;" id="headings"> List of Products</h1>
						
						<br><br>
                        <h2 style="padding-left:120px;display:inline-block;color:#004e92" class="summary">Summary</h2>
                        
                        <br><br><br>
                        
                        
                        <table border="0" width="75%" cellspacing="30" cellpadding="10" align="center">
                            <!-- table row 1-->
                            <tr>
                                <td>
                                    <div class="rcontainer" style="height:170px;width:500px;">
										
                                        <center>
                                        	<img src="images/admin/buy.png" style="width:45px; height:45px;"><br>
                                        	<h2 style="font-size:28px;margin-top:5px;" class="summary">Best selling product</h2>
                                         	<p style="display:inline;font-size:18px;"> Mens Tommy Hilfiger Denim Coach Jacket</p>
                                        </center>
                                        
                                       
                                    </div>
                                </td>
                                <td>
                                    
                                    <div class="rcontainer" style="height:170px;width:350px;">

                                       <center>
                                        	<img src="images/admin/income1.png" style="width:45px; height:45px;"><br>
                                        	<h2 style="font-size:28px;margin-top:5px;" class="summary">Estimated Earnings</h2>
                                         	<p style="display:inline;font-size:18px;"> Rs.8,260,000.00 <br> 100 Orders</p>
                                        </center>
                                    
                                </td>
                                <td>
                                   
                                   <div class="rcontainer" style="height:170px;width:350px;">

                                      <center>
                                        	
                                        	<h2 style="font-size:28px;margin-top:5px;" class="summary">Store Overview</h2>
                                         	<p style="display:inline;font-size:18px;"> Total Products in the Store : ${rowCount}</p>
                                         	<button style='background-color: green;color:white;padding: 10px; border-radius:10px; border-color:white;margin-top:5px;width:180px;font-weight:bold;'> <a href="AddProductForm1.jsp" style='color:white;text-decoration:none;'>Add New Product</a></button>
                                        </center>
                                   </div>
                                   
                                </td>
                            
                            </tr>

                        </table>
                        
                        
                        <br><br><br><br>
                   		<center>
                   		<div style="width:90%;" align="center">
                   		
                   			 
	                        <table border="2" width="90%" cellpadding="10" align="center" style="text-align:center;background-color:white;" class="table table-hover table-bordered">
	                        
	                        	<tr>
	                        		
	                        		<c:forEach var="col" items="${columnName}">
						                <th style="background-color:#90EE90;">${col}</th>
						            </c:forEach>
	                        		
	                       			
	                        		
	                        	</tr>
	                        
	                        	<c:forEach var="Prod" items="${ProductDetails}">
	                        
	                        		<c:set var="id" value="${Prod.product_ID}"/> 
	                        		<c:set var="productName" value="${Prod.productname}"/> 
	                        		<c:set var="Descriptions" value="${Prod.description}"/>
	                        		<c:set var="unitPrice" value="${Prod.unitprice}"/>
	                        		<c:set var="qtyHand" value="${Prod.qtyinhand}"/> 
	                        		
	                        		
		                        	<!-- internally calling the supplier model class getters -->
		                        	
	                        		<tr>
	                        		
	                        			<td>
	                        				${Prod.product_ID}
	                        			</td>
	                        			<td>
	                        				${Prod.productname}
	                        			</td>
	                        			<td>
	                        				${Prod.description}
	                        			</td>
	                        			<td>
	                        				${Prod.unitprice}
	                        			</td>
	                        			<td>
	                        				${Prod.qtyinhand}
	                        			</td>
	                        			
	                        			
	                        			<c:url value="updateProduct.jsp" var="ProductUpdates">
	                        
					                        <c:param name="id" value="${id}"/>
					                        <c:param name="pname" value="${productName}"/>
					                        <c:param name="description" value="${Descriptions}"/>
					                        <c:param name="unitP" value="${unitPrice}"/>
					                        <c:param name="qtyHand" value="${qtyHand}"/>
					                        
					                        
					                     </c:url> 
	                        			<td colspan="2">
	                        				
	                        				<a href="${ProductUpdates}" style='text-decoration: none; color:white;'>
	                        					<button style='background-color: green;color:white;padding: 3px; border-radius:3px; border-color:white;font-size:12px;'> Edit</button>
	                        				</a>
	                        				
	                        				<form name="frmDeleteProd" action="productDeleteServlet" method="post" onsubmit="return confirmDelete();">
	                        				
	                        					<input type="hidden" name="id" value="${Prod.product_ID}"/>
	                        					
                                            		<button style='background-color: red;color:white;padding: 3px; border-radius:3px; border-color:white;font-size:12px;'> Delete </button>
	                        			
	                        				</form>
	                        				<script>
	                        				
											    function confirmDelete() {
											        return confirm("Do you want to delete this product?");
											    }
											
											    function handleDelete() {
											        if (confirmDelete()) {
											            // If the user clicked "OK", submit the form
											            document.frmDeleteProd.submit();
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
	                         	
	                         	
	                         	<c:if test="${empty ProductDetails}">
								    <p>No Prodcuts found!</p>
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