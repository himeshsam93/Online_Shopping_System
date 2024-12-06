<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
     <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %> 
<!DOCTYPE html>
<html>
	<head>
		
		<meta charset="UTF-8">
		<title>Your Shopping Cart | LaSephora</title>
		<meta name="viewport" content="width=device-width, initial-scale=1.0">
		 
		 <link rel="stylesheet" type="text/css" href="css/home.css">
		  <link rel="stylesheet" type="text/css" href="css/footer.css">
		 
		<!--  <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH" crossorigin="anonymous">
		 <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-YvpcrYf0tY3lHB60NNkmXc5s9fDVZLESaAA55NDzOxhy9GkcIdslK1eN7N6jIeHz" crossorigin="anonymous"></script> -->
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
			
				<!--  menu bar -->
				<jsp:include page="menu_bar.jsp" />
				
				<!-- landing page content-->
				
				<div style="top:70px; margin-top:70px;">
				
					<div class="long_bg">
	                     <center>
						<img src="images/men/shopping.png" width="100%" height="280">
						</center>
							<br><br><br><br>
					</div>
					
				</div>
			</div>
			
			
			<!--Explore featured collection -->
			<div style="background-color:white;">
			
				<div class="title">
					
					<h1 style="text-align:center" id="headings">Shopping Cart</h1>
					
					<br><br>	<br>
					
					<center>
					<div class="displayItems" style="width:63%; height:300px;">
					
						<c:forEach var="Ord" items="${OrderDetails}" begin="14" end="16">
	                        
                      		<c:set var="id" value="${Ord.order_ID}"/> 
                      		<c:set var="productName" value="${Ord.product_Name}"/> 
                      		<c:set var="color" value="${Ord.color}"/>
                      		<c:set var="size" value="${Ord.size}"/>
                      		<c:set var="qty" value="${Ord.qty}"/> 
                      		<c:set var="price" value="${Ord.price}"/>
	                         <c:set var="productTotal" value="${Ord.price * Ord.qty}"/>	
	                        <table border="0" width="80%" cellpadding="10" align="center" cellspacing="30">
	                        
	                        <tr>
	                        
	                        	<td style="width:50%">
	                        	
	                        		<p style="margin-left:10px; font-size:16px;"> <b>${Ord.product_Name}</b> </p>	
	                        		
	                        		<p style="margin-left:10px; font-size:15px;">Color : ${Ord.color}</p>
	                        		
	                        		<p style="margin-left:10px; font-size:15px;">Size : ${Ord.size}</p>
	                        		
	                        		 
	                        		<c:url value="shoppingCartUpdate.jsp" var="OrderUpdates">
                   
				                       <c:param name="id" value="${id}"/>
				                       <c:param name="Pname" value="${productName}"/>
				                       <c:param name="Color" value="${color}"/>
				                       <c:param name="Sizee" value="${size}"/>
				                       <c:param name="Qty" value="${qty}"/>
				                        <c:param name="Price" value="${price}"/>
				                      
				                        <c:param name="TotalPrice" value="${productTotal}"/>
									                        
									                        
									</c:url>
	                        		
					                 
					                 
					                 <table border="0">
					                 
					                 <tr>
					                 	
					                 	<td>
					                 	
					                 	<a href="${OrderUpdates}" style='text-decoration: none; color:white;'>
	                        					<button style='background-color: green;color:white;padding: 3px; border-radius:3px; border-color:white;font-size:12px; display:inline-block;'> Update Product</button>
	                        			</a>
					                 	
					                 	</td>
					                 	
					                 	<td>
					                 	
					                 		<form name="frmDeleteOrder" action="orderShopDeleteServlet" method="post" onsubmit="return confirmDelete();">
	                        				
	                        					<input type="hidden" name="id" value="${Ord.order_ID}"/>
	                        					
                                            		<button style='background-color: red;color:white;padding: 3px; border-radius:3px; border-color:white;font-size:12px;'> Remove</button>
	                        			
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
					                 
					                 
					                 
					                 
					                 </table>
					                 
					                 
	                        		
	                        		
	                        		
	                        		
	                        	</td>
	                        	
	                        	<td style="width:15%">
	                        	
	                        		<p style="margin-left:10px; font-size:15px;"> Qty : ${Ord.qty}</p>
	                        	
	                        	</td>
	                        	
	                        	<td style="width:15%">
	                        	
	                        		<p style="margin-left:10px; font-size:15px;"> Rs. ${Ord.price}</p>
	                        	
	                        	</td>
	                        </tr>
	                        
	                        </table>
	                        
	                         
	                
	                       
	                        		
		                        	
		                        	
	                    </c:forEach>
	                 </center>
					
					
					
					</div>
				
					 <br><br><br> <br><br><br><br><br><br><br>
					<!--HR Line-->
                        <hr class="fade-in-text" style="margin-left:350px;margin-right:350px; color:black;" size="10">
                     <br><br><br>
					
					
					
				</div>
				<center>
				<div class="total" style="background-color:#f6f6f6; width:50%; height:300px;">
				
				
					<c:set var="totalPrice" value="0"/> <!-- Initialize totalPrice -->

					<c:forEach var="Ord" items="${OrderDetails}" begin="14" end="16">
					    <c:set var="id" value="${Ord.order_ID}"/> 
					    <c:set var="productName" value="${Ord.product_Name}"/> 
					    <c:set var="color" value="${Ord.color}"/>
					    <c:set var="size" value="${Ord.size}"/>
					    <c:set var="qty" value="${Ord.qty}"/> 
					    <c:set var="price" value="${Ord.price}"/>
					    
					    <!-- Calculate total for the current product (price * quantity) -->
					    <c:set var="productTotal" value="${Ord.price}"/>
					    
					    <!-- Add the product's total to the cumulative totalPrice -->
					    <c:set var="totalPrice" value="${totalPrice + productTotal}"/>
					</c:forEach>
					
					
					<br><br>
					<p style="text-align:left; margin-left:30px; font-size:15px;float:left;">Subtotal </p>
					<p style="text-align:right; margin-right:30px; font-size:15px;float:right;"> <b>Rs. <c:out value="${totalPrice}"/></b> </p>
					<br><br>
					
					<p style="text-align:left; margin-left:30px; font-size:15px;float:left;">GST Included </p>
					<!-- Calculate 10% of the total price -->
					<c:set var="gstAmount" value="${totalPrice * 0.1}" />
					
					<p  style="text-align:right; margin-right:30px; font-size:15px;float:right;"> <b>Rs. <c:out value="${gstAmount}" /></b> </p>
					<br><br>
					
					<c:set var="deliveryCharge" value="500" />
					<p style="text-align:left; margin-left:30px; font-size:15px;float:left;">Delivery </p>
					<p  style="text-align:right; margin-right:30px; font-size:15px;float:right;"> <b>Rs. <c:out value="${deliveryCharge}" /></b> </p>
					<br><br>
					<br>
					
					<c:set var="grandTotal" value="${totalPrice + gstAmount + deliveryCharge}" />
					<p style="text-align:left; margin-left:30px; font-size:18px;float:left;"><b>Total</b> </p>
					<p  style="text-align:right; margin-right:30px; font-size:15px;float:right;"> <b>Rs. <c:out value="${grandTotal}" /></b> </p>
					
					
					
				
				</div>
				
				<div>
						<br><br>
						
						<form name="frmCreditcard" action="creditCard.jsp" method="POST">
						
						<button type="submit" name="btnSubmit" id="btnSubmit" class="btn" style="background-color:black; color:white; width:200px; margin-bottom:15px;">Proceed to Checkout</button><br>
						
						
						</form>
						
						<form name="frmMen" action="men.jsp" method="POST">
						
						<button type="submit" name="btnSubmit" id="btnSubmit" class="btn" style="background-color:white; color:black; width:200px;border:2px solid black">Continue Shopping</button>
						<br><br>
						
						</form>
						
					
					</div>
					
				<div>
				<br><br><br><br>
					<!--HR Line-->
                        <hr class="fade-in-text" style="margin-left:100px;margin-right:100px; color:black;" size="10">
                    
				
				</div>
				</center>
				
				
				
				
				
				
				
				
			</div>
			
			 <!--Footer Content-->
                <div class="footer-content">
                    <br><br><br>
                    <br><br><br><br>
                    <div class="footer">
                        <footer>
                            <br><br><br><br>
                            <table border="0" width="100%" cellpadding="10">
                                <tr>
                                    <td>
                                        <!--Menubar La Sephora logo-->
                                        <div class="menu-bar-logo" style="display: inline-block;">
                                            <br>
                                            <a href="./index.jsp" target="_self"> 
                                                <img src="images/home/LaSephora_Logo.png" alt="La Sephora Logo" title="Logo" class="menu_bar_logo" style="margin-left:82px;margin-bottom:10px;">
                                                
                                            </a>  
                                            <p class="footer_text" style="padding-left: 80px; color:black;">&copy; La Sephora. All Rights Reserved.</p>
                                            <br><br><br><br>
                                            <div class="Scocial-media-icons" style="display: inline-block;padding-left: 75px;">

                                                <img src="images/home/fb.png" class="social_media" style="width: 17px;height: 17px; ">
                                                <img src="images/home/X.png" class="social_media">
                                                <img src="images/home/Instergram.png" class="social_media">
                                                <img src="images/home/LinkedIN.png" class="social_media">
                                                <img src="images/home/Googlee.png" class="social_media">
                                                <img src="images/home/YT.png" class="social_media" style="width: 20px;">
                                            </div>
                                        </div>
                                
                                    </td>
                                    <td>
                                        <p class="footer_text" style="padding-top: 25px;color:black;"><b>Links</b></p>
                                        <br>
                                        <a href="/index.html"><p class="footer_text">Home</p></a>
                                        <p class="footer_text">Men</p>
                                        <p class="footer_text">Women</p>
                                        <p class="footer_text">Careers</p>
                                        <p class="footer_text">About</p>
                                        <p class="footer_text">Support</p>
                                    </td>
                                    <td style="vertical-align: top;">
                                        <p class="footer_text" style="padding-top: 25px;color:black;"><b>Legal</b></p>
                                        <br>
                                        <p class="footer_text">Terms & Conditions</p>
                                        <p class="footer_text">Privacy policy</p>
                                        <p class="footer_text">Cookie policy</p>
                            
                                    </td>
                                    <td style="vertical-align: top;">
                                        <p class="footer_text" style="padding-top: 25px;color:black;"><b>Get In Touch</b></p>
                                        <br>
                                        <p class="footer_text">Malabe, Sri Lanka</p>
                                        <p class="footer_text">xxx-xxxx</p>
                                        <p class="footer_text">info@lasephora.com</p>
                            
                                    </td>
                                </tr>
                            </table>
                             <p class="footer_text" style="padding-left: 85px;color:black;">&nbsp;&nbsp;🇱🇰 &nbsp; Country/Region <br> <img src="images/home/globe.png" class="social_media"> <u>ENGLISH(INTL)</u></p>
                            <br><br><br><br>

                        </footer>
                    </div>
                </div>
		</div>
	
	</body>
</html>