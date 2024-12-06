<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>Update Order</title>
		 <meta name="viewport" content="width=device-width, initial-scale=1.0">
		 
		 <link rel="stylesheet" type="text/css" href="css/home.css">
		  <link rel="stylesheet" type="text/css" href="css/footer.css">
		  <link rel="stylesheet" type="text/css" href="css/addProductForm.css">
		  <link rel="stylesheet" type="text.css" href="css/admin_dashboard.css">
		 
		 <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH" crossorigin="anonymous">
		 <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-YvpcrYf0tY3lHB60NNkmXc5s9fDVZLESaAA55NDzOxhy9GkcIdslK1eN7N6jIeHz" crossorigin="anonymous"></script>
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
			
		%>
		<jsp:include page="admin_menu_bar.jsp" />
	
	<br><br><br>
    <div class="main-content">
        <div class="newproductform">
	        <h2>Update Order</h2>
	      
	    	<form name="frmUpdateOrder" id="frmUpdateOrder" action="orderUpdateServlet" method="post">
	        
	        	<div>
	                <label for="orderID">Order ID:<span style="color:red;">*</span></label>
	                <input type="text" id="orderID" name="txtOrderID" required value="<%=id%>" readonly>
	            </div>
	            <div>
	                <label for="productName">Product Name:</label>
	                <input type="text" id="productName" name="txtProductName" required value="<%=ProductName%>" pattern="[A-Za-z\s]+" title="Product name should only contain letters and spaces.">
	            </div>
	            
	            <div>
	                <label for="color">Color:</label>
	               <input type="text" id="Coloe" name="txtColor" required value="<%=color%>" pattern="[A-Za-z\s]+" title="Color should only contain letters and spaces.">
	                
	            </div>
	            <div >
	                <label for="size">Size:</label>
	                <input type="text" id="size" name="txtSizes" required value="<%=size%>" pattern="[A-Za-z\s]+" title="Size should only contain letters">
	                
	            </div>
	            <div>
	                <label for="quantity">Quantity:</label>
	                <input type="number" id="quantity" name="txtQuantity" min="0" required value="<%=qty%>">
	            </div>
	            
	            <div >
	                <label for="price">Price:</label>
	                <input type="number" id="price" name="txtPrice" step="0.01" required value="<%=price%>">
	            </div>
	            <div>
	                <button type="submit" name="btnSubmit">Submit</button>
	            </div>
	        </form>
   		 </div>
    </div>
		
	<!--Footer Content-->
       <div class="footer-content">
           <br><br><br>
           
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
	
	
	
	</body>
</html>