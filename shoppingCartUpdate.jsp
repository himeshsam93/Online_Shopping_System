<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
         <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %> 
<!DOCTYPE html>
<html>
	<head>
	
		<meta charset="UTF-8">
		<title>Update Product | LaSephora</title>
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
	
	<%
			String id = request.getParameter("id");
			String ProductName = request.getParameter("Pname");
			String color = request.getParameter("Color");
			String size = request.getParameter("Sizee");
			String qty = request.getParameter("Qty");
			String price = request.getParameter("Price");
			String Totalprice = request.getParameter("TotalPrice");
			
		%>
	
	
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
					
					<h1 style="text-align:center" id="headings">Update the Product</h1>
					
					<br><br><br>
					
					
					<div class="displayItems" style="width:63%; height:300px; margin-left:620px;">
					
						<form name="frmreedit" action="orderShopUpdateServlet"  method="POST">
										
								<label for="heading">
								  
					           <input type="text" id="orderID" name="txtOrderID" required value="<%=id%>" readonly hidden>
					           
								<p style="color:black;">Product Name</p> 
								<input type="text" name="txtName" id="txtName" readonly value="<%=ProductName%>" style="width:350px;text-align:center">
								</label>
								<br><br>
								
								<label for="price">
								  <!-- Calculate total for the current product (price * quantity) -->
					    		<%
   		
								    int quantity = qty != null && !qty.isEmpty() ? Integer.parseInt(qty) : 0;
								    double unitPrice = price != null && !price.isEmpty() ? Double.parseDouble(price) : 0.0;
								    double totalPrice = quantity * (unitPrice / quantity);
								%>
								<input type="text" name="txtPrice" id="txtPrice" value="<%=String.format("%.2f", totalPrice)%>" hidden>
				
								</label>
								
									<label for="color">
									<p style="color:black;">Colors</p> 
									<input type="text" name="txtColor" id="txtColor" readonly value="<%=color%>" style="width:200px;text-align:center" required>
									</label>
									<br><br>
									
									<label for="size">
									<p style="color:black;">Sizes</p> 
									<select id="txtSize" name="txtSize" style="width:200px;background-color:white;text-align:center" required >
										<option value="<%=size%>"><%=size%></option>
								    	<option value="XS">XS</option>
								    	<option  value="S">S</option>
								    	<option  value="M">M</option>
								    	<option value="L">L</option>
								    	<option value="XL">XL</option>
							    	
									</select>
									</label>
									<br><br>
									
									<label for="qty">
									<p style="color:black;">Quantity</p> 
									<input type="text" name="txtQty" id="txtQty" value="<%=qty%>" style="width:200px;text-align:center" required >
									<a href="sizeGuide.jsp" style="color:black" target="_blank"><p style="font-size:15px;padding-top:10px;">Size Guide </p></a>
									</label>
									<br><br>
									
									<button type="submit" name="btnSubmit" id="btnSubmit" class="btn" style="background-color:black; color:white; width:200px; margin-bottom:15px;">Update the Product</button><br>
									
									<br><br><br>
									
									<script>
									    // Update total price dynamically when quantity or price changes
									    function updateTotal() {
									        const qty = parseFloat(document.getElementById('txtQty').value) || 0;
									        const price = parseFloat(document.getElementById('txtPrice').value) || 0;
									
									        const total = qty * price;
									
									        // Update the Total Price field
									        document.getElementById('txtPrice').value = total; // Format to 2 decimal places
									    }
									</script>

							
									
						</form>
									
					
						
	               
					
					
					
					</div>
				
					 <br><br><br> <br><br><br><br><br><br><br>
					<!--HR Line-->
                        <hr class="fade-in-text" style="margin-left:350px;margin-right:350px; color:black;" size="10">
                     <br><br><br>
					
					
					
				</div>
				<center>
				
				
					
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