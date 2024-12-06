<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>Size Guide</title>
		<meta name="viewport" content="width=device-width, initial-scale=1.0">
		 
		 <link rel="stylesheet" type="text/css" href="css/home.css">
		  <link rel="stylesheet" type="text/css" href="css/footer.css">
		  <link rel="stylesheet" type="text/css" href="css/purchaseForm.css">
		 
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
	
		<!--  menu bar -->
				<jsp:include page="menu_bar.jsp" />
		<div class="sizeGuide" style="margin-left:90px;">
			<br>	<br>	<br>	<br>	<br><br><br>
			<h1 style="font-size:30px;" id="headings">Men's Tops</h1><br>
		<p style="font-size:15px;">The measurements on the size chart are body measurements. Find your correct size in the chart below. Scroll horizontally to see more sizes.</p>
		
		<h1 style="font-size:30px;" id="headings">Size Chart</h1><br>
		<img src="images/men/size.png" width="900" height="500"> 
		
		
		<h1 style="font-size:20px;" id="headings">Fit Tips</h1><br>
		
		<p style="font-size:15px;">Tall Tops Sizes (6’ – 6’5”/183-196cm): 1.75”/4.5cm longer in length than regular tops. Sleeve length is adjusted proportionately depending on silhouette. <br>Tall sizes are only available for select styles.
		
		<br><br> If you’re on the borderline between two sizes, order the smaller size for a tighter fit or the larger size for a looser fit.<br> If your measurements for chest and waist correspond to two different suggested sizes, order the size indicated by your chest measurement.
	 	</p>


		<br><br>
		
		<br>
						<!--HR Line-->
        <hr class="fade-in-text" style="margin-left:50px;margin-right:140px; color:black;" size="10" >
					
		<br><br>
		
		</div>
		
		<div>
			<jsp:include page="footer.jsp" />
		</div>
	
	</body>
</html>