<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>Home</title>
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
				
				<div class="bg_video_container" style="top:70px; margin-top:70px;">
					
					
					<div class="video_container" style="top:70px;">
					
						<video autoplay controls loop muted plays-inline class="background-clip"  width="1470">
						
							<source src="images/home/background_video.mp4" type="video/mp4">
						
						
						</video>
					
						<div class="content">
						
							<p style="margin-top:490px; color:white; font-size:13px;"> Prada The Galleria featuring Hunter Schafer </p>
							<p class="tagline">LS Special Edition 2024-2025</p>
							<h5 style="font-size:13px;"><a href="#">Discover</a></h5>
						
						</div>
					</div>
					
				</div>
			

			</div>
			
			
			<!--Explore featured collection -->
			<div style="background-color:white;">
			
				<div class="Explore-featured-collection">
			
					<br><br><br><br>
			
					<div class="bg_container">
						<h1 style="text-align:center" id="headings">Explore the Featured Collection</h1>
						<br>
						<p class="fade-in-text" style="text-align:center">Luxurious designs crafted for the modern connoisseur, where elegance meets exceptional craftsmanship.</p>
						<br><br>
						
						<!-- products table  -->
						<table  border="0" width="80%" cellspacing="30" cellpadding="50" align="center">
							
							 <!--Table row 1-->
							<tr>
							
								<td>
									
									<img src="images/home/prada1.png" width="300" height="400" alt="Prada1" title="Prada">
									<br><br>
									<p style="text-align:center; font-size:15px;">Men's Prada Oversized Jacket.</p>
								
								</td>
								<td>
								
									<img src="images/home/prada2.png" width="300" height="400" alt="Prada2" title="Prada">
									<br><br>
									<p style="text-align:center; font-size:15px;">Women's Prada Sablé dress.</p>
								</td>
								<td>
									
									<img src="images/home/Nike1.png" width="300" height="400" alt="Nike1" title="Nike">
									<br><br>
									<p style="text-align:center; font-size:15px;">Men's Nike Football Authentic Shirt.</p>
								
								</td>
							</tr>
							
							 <!--Table row 2-->
							<tr>
							
								<td>
									
									<img src="images/home/Nike5s.png" width="300" height="408" alt="Nike2" title="Nike">
									<br><br>
									<p style="text-align:center; font-size:15px;">Women's Nike Woven Jacket.</p>
								
								</td>
								<td>
								
									<img src="images/home/tommy3.png" width="310" height="408" alt="Tommy1" title="Tommy Hilfiger">
									<br><br>
									<p style="text-align:center; font-size:15px;">Men's Tommy Hilfiger Flannel Trouser. </p>
								
									
								</td>
								<td>
									
									<img src="images/home/tommy2.png" width="310" height="408" alt="Tommy2" title="Tommy Hilfiger">
									<br><br>
									<p style="text-align:center; font-size:15px;">Women's Tommy Hilfiger Classic Peacoat </p>
								
								</td>
							</tr>
						
						</table>
						<br>
						<!--HR Line-->
                        <hr class="fade-in-text" style="margin-left:100px;margin-right:100px; color:black;" size="10">
					</div>
				</div>
			</div>
			
			
			<!--Women collection -->
			<div style="background-color:white;">
			
				<div class="women-collection">
				
					<br><br><br>
			
					<div class="bg_container">
					
						<p style="color:black; font-size:13px; text-align:center;">WOMEN</p>
						<h1 style="text-align:center" id="headings">Fall Collection 2024-2025</h1>
						<br>
						<p class="fade-in-text" style="text-align:center">Brimming with the creative effervescence of the sixties, the La Sephora Fall 2024-2025 <br> ready-to-wear collection explores the powerful connections between fashion's inventiveness and plural femininity. <br> Combining heritage and modernity, the looks are fluid and graphically striking.</p>
			
						<h5 class="fade-in-text" style="font-size:13px; color:black; text-align:center"><a href="#" style="color:black;">Discover the Collection</a></h5>
						
						<br><br>
						
						<!-- women background large image -->
						<img src="images/home/women_bg.jpg" width="100%" height="520">
						
						<br><br><br><br>
						
						
						<!-- products table  women -->
						<table  border="0" width="80%" cellspacing="30" cellpadding="50" align="center">
							
							 <!--Table row 1-->
							<tr>
							
								<td>
									
									<img src="images/home/Nike6.png" width="310" height="408" alt="Nike6" title="Nike">
									<br><br>
									<p style="text-align:center; font-size:15px;">Women's Nike Loose Jacket.</p>
								
								</td>
								<td>
								
									<img src="images/home/us1.png" width="280" height="408" alt="US_Polo1" title="US Polo">
									<br><br>
									<p style="text-align:center; font-size:15px;">Women's US Polo Puffer Gilet </p>
								</td>
								<td>
									
									<img src="images/home/prada3.png" width="320" height="408" alt="Prada1" title="Prada">
									<br><br>
									<p style="text-align:center; font-size:15px;"> Women's Prada Prince of Wales jacket.</p>
								
								</td>
							</tr>
						
						</table>
						
						<br>
						<!--HR Line-->
                        <hr class="fade-in-text" style="margin-left:100px;margin-right:100px; color:black;" size="10" >
					
					</div>
			
				</div>
			
			</div>
			
			
			
			<!-- LS Special Edition 2024-2025 collection -->
			<div style="background-color:white;">
			
				<div class="LS-Special-Edition-2024-2025">
				
					<br><br><br>
			
					<div class="bg_container">
					
						<p style="color:black; font-size:13px; text-align:center;">WOMEN</p>
						<h1 style="text-align:center" id="headings">LS Special Edition 2024-2025</h1>
						<br>
						<p class="fade-in-text" style="text-align:center">The La Sephora Special Edition 2024-2025 showcases a perfect fusion of opulence and innovation.<br> With exquisite craftsmanship, rich textures, and vibrant hues, each piece offers a unique blend of <br> modern elegance and timeless charm, celebrating confident and empowered femininity.</p>
			
						<h5 class="fade-in-text" style="font-size:13px; color:black; text-align:center"><a href="#" style="color:black;">Discover the Collection</a></h5>
						
						<br><br>
						
						<!-- LS Special Edition 2024-2025  background large image -->
						
						<table border="0" width="100%" cellspacing="30" cellpadding="30" align="center">
						
							<tr>
								
								<td>
									
									<img src="images/home/nike_bg.jpg" width="100%" height="450">
								
								</td>
								
								<td>
									
									<img src="images/home/prada_bg.png" width="100%" height="450">
									
								</td>
							
							</tr>
						
						
						</table>
						
						<!-- short tagline -->
						<br><br><br><br>
						<h1 style="text-align:center; text-size:20px;" id="headings"> "The Essence of Opulence, Tailored for You."</h1><br>
						<p style="color:black; font-size:13px; text-align:center;color: rgb(85, 85, 85);">Experience the pinnacle of luxury, meticulously crafted to reflect your individuality with <br> timeless elegance and personalized sophistication.</p>
						
						<br><br><br><br>
						
						
						<!-- products table  women -->
						<table  border="0" width="80%" cellspacing="30" cellpadding="50" align="center">
							
							 <!--Table row 1-->
							<tr>
							
								<td>
									
									<img src="images/home/chanel1.png" width="310" height="408" alt="Chanel1" title="Chanel">
									<br><br>
									<p style="text-align:center; font-size:15px;">Women's Prada Jeans.</p>
								
								</td>
								<td>
								
									<img src="images/home/chanel2.png" width="310" height="408" alt="Chanel1" title="Chanel">
									<br><br>
									<p style="text-align:center; font-size:15px;">Women's Prada Dress. </p>
								</td>
								<td>
									
									<img src="images/home/chanel3.png" width="310" height="408" alt="Chanel1" title="Chanel">
									<br><br>
									<p style="text-align:center; font-size:15px;"> Women's Prada Blouse. </p>
								
								</td>
							</tr>
						
						</table>
						
						<br>
						<!--HR Line-->
                        <hr class="fade-in-text" style="margin-left:100px;margin-right:100px; color:black;" size="10" >
					
					</div>
			
				</div>
			
			</div>
			
			
			
			
			<!--Men collection -->
			<div style="background-color:white;">
			
				<div class="men-collection">
				
					<br><br><br>
			
					<div class="bg_container">
					
						<p style="color:black; font-size:13px; text-align:center;">MEN</p>
						<h1 style="text-align:center" id="headings">LS Essentials</h1>
						<br>
						<p class="fade-in-text" style="text-align:center">La Sephora Men Essentials 2024-2025 epitomizes contemporary masculinity with a collection<br> of refined staples. Featuring high-quality materials and timeless designs, these essentials provide the perfect<br> blend of style and  functionality for the modern man’s wardrobe.</p>
			
						<h5 class="fade-in-text" style="font-size:13px; color:black; text-align:center"><a href="men.jsp" style="color:black;">Discover the Collection</a></h5>
						
						<br><br>
						
						<!-- men background large image -->
						<img src="images/home/men_bg5.png" width="100%" height="520">
						
						<br><br><br><br>
						
						
						<!-- products table  men -->
						<table  border="0" width="80%" cellspacing="30" cellpadding="50" align="center">
							
							 <!--Table row 1-->
							<tr>
							
								<td>
									
									<img src="images/home/tommy4.png" width="300" height="408" alt="Tommy4" title="Tommy Hilfiger">
									<br><br>
									<p style="text-align:center; font-size:15px;">Men's Tommy Hilfiger Denim Coach Jacket.</p>
								
								</td>
								<td>
								
									<img src="images/home/nike7.png" width="310" height="408" alt="Nike7" title="Nike">
									<br><br>
									<p style="text-align:center; font-size:15px;">Men's Nike Golf Vest Hoodie.</p>
								</td>
								<td>
									
									<img src="images/home/US2.png" width="330" height="428" alt="US polo2" title="Us polo">
									<br><br>
									<p style="text-align:center; font-size:15px;"> Men's US Polo Limited Edition Shirt.</p>
								
								</td>
							</tr>
						
						</table>
						
						<br>
						<!--HR Line-->
                        <hr class="fade-in-text" style="margin-left:100px;margin-right:100px; color:black;" size="10" >
					
					</div>
			
				</div>
			
			</div>
			
			
			
			<!-- LS last picture men -->
			<div style="background-color:white;">
			
				<div class="LS-men">
				
					<br><br><br>
			
					<div class="bg_container">
				
						
						<!-- short tagline -->
						<br><br><br><br>
						<h1 style="text-align:center; text-size:20px;" id="headings"> "Classic Essentials for the Modern Gentleman."</h1><br>
						<p style="color:black; font-size:13px; text-align:center;color: rgb(85, 85, 85);">Explore a selection of classic essentials crafted for the contemporary gentleman, <br>combining elegance and practicality to elevate your everyday wardrobe.</p>
						
						<br><br><br><br>
						
						
						<!-- LS Special Edition 2024-2025  background large image -->
						
						<table border="0" width="100%" cellspacing="30" cellpadding="30" align="center">
						
							<tr>
								
								<td>
									
									<img src="images/home/men_bg7.jpg" width="100%" height="400">
								
								</td>
								
								<td>
									
									<img src="images/home/men_bg2.png" width="800" height="400">
									
								</td>
							
							</tr>
						
						
						</table>
		
						<br>
						<!--HR Line-->
                        <hr class="fade-in-text" style="margin-left:100px;margin-right:100px; color:black;" size="10" >
					
					</div>
			
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
		</div>
	</body>
</html>