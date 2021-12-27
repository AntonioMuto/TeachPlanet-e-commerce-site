<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<head>
	<!-- Termini accentati -->
	<meta charset="utf-8">
	
	<!-- Favicon -->
	<link rel="icon" href="../images/index/logo.png" type="image/x-icon"/>
	
	<!-- CSS -->
	<link href="../css/contattaci/contattaci.css" rel="stylesheet" type="text/css" />
	
	<!-- Bootstrap -->
	<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.2/dist/css/bootstrap.min.css" rel="stylesheet">
  	<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.2/dist/js/bootstrap.bundle.min.js"></script>	

	<!-- JQUERY -->
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>

	<!--AJAX ha la dipendenza nel pom -->
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>

<!------------------------GRUPPO-------------------------------------------->	
	<meta charset="utf-8">
	<meta http-equiv="X-UA-Compatible" content="IE=edge">
	<meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=0" />
	<link type="text/css" rel="stylesheet" href="../css/index/style.css" />
	<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
	<!-- CSS only -->
	<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet">
	<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.2/dist/css/bootstrap.min.css" rel="stylesheet">
  	<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.2/dist/js/bootstrap.bundle.min.js"></script>
<!------------------------GRUPPO-------------------------------------------->	


</head>

<body>
<!-------------------------GRUPPO--------------------------------------------->

	<!-- HEADER -->
	<header>
		<!-- TOP HEADER -->
		<div id="top-header">
			<div class="container">
				<ul class="header-links pull-left">
					<li><a href="#"><i class="fa fa-phone"></i> +021-95-51-84</a></li>
					<li><a href="#"><i class="fa fa-envelope"></i>
							email@email.com</a></li>
					<li><a href="#"><i class="fa fa-map-marker"></i> 1734
							Stonecoal Road</a></li>
					<li><a href="#"><i class="fa fa-eur"></i> EUR</a></li>
				</ul>
				<ul class="header-links pull-right">
						<%if (session.getAttribute("loggato") == "si") {%>
								<a href="/faiLogout" style="text-decoration: none;">
									<button class="btnLog">
										<span>Log out</span>
									</button>
								</a>
								<%} else {%>
								<a href="login.html" style="text-decoration: none;">
									<button class="btnLog">
										<span>Login</span>
									</button>
								</a>
								<a href="signUp.html" style="text-decoration: none;">
									<button class="btnLog">
										<span>Sign Up</span>
									</button>
								</a>
								<%}%>
				</ul>
			</div>
		</div>
		<!-- /TOP HEADER -->

		<!-- MAIN HEADER -->
		<div id="header">
			<!-- container -->
			<div class="container">
				<!-- row -->
				<div class="row">
					<!-- LOGO -->
					<div class="col-md-3">
						<div class="header-logo">
							<a href="#" class="logo"> <img id="logo"
								src="images/index/logo.png" alt="">
							</a>
						</div>
					</div>
					<!-- /LOGO -->

					<!-- SEARCH BAR -->
					<div class="col-md-6">
						<div class="header-search">
							<form>
								<select class="input-select">
									<option value="0">All Categories</option>
									<option value="1">Smartphone</option>
									<option value="2">TV</option>
									<option value="3">Accessories</option>
								</select> <input class="input" placeholder="Search here">
								<button class="search-btn">Search</button>
							</form>
						</div>
					</div>
					<!-- /SEARCH BAR -->

					<!-- ACCOUNT -->
					<div class="col-md-3">
						<div class="header-ctn">
							<!-- Wishlist -->
							<div style="padding-right: 10%; padding-left: 25%;">
								<a href="#" style="text-decoration: none;"> <i
									class="fa fa-heart" id="heart"></i> <!--<div class="qty">0</div>-->
								</a>
							</div>

							<!-- Cart -->
							<div style="padding-right: 10%;">
								<a href="cart.html" style="text-decoration: none;"> <i
									class="fa fa-shopping-cart"></i> <!--<div class="qty">0</div>-->
								</a>
							</div>
							<!-- /Cart -->

							<!-- User Toogle -->
							<div>
								<%if (session.getAttribute("loggato") == "no" || session.getAttribute("loggato") == null){%>
								<a href="login.html" style="text-decoration: none;"> 
									<i class="fa fa-user"></i>
								</a>
								<%} else if(session.getAttribute("loggato") == "si"){%>
								<a href="account.html" style="text-decoration: none; display: flex; "> 
									<img class="profilePic" src="images/account/avatar.png" style="border-radius: 50%;" width="29" height="29" alt="Avatar">
									${username}
								</a>
								<%}%>
							</div>
							<!-- /User Toogle -->
						</div>
					</div>
				</div>
			</div>
		</div>
	</header>
	<!--/HEADER-->

	<!-- /SECTION -->
	<nav id="navigation" class="navbar navbar-expand-sm bg-dark">
		<div class="container-fluid">
			<button class="navbar-toggler" type="button"
				data-bs-toggle="collapse" data-bs-target="#mynavbar">
				<span class="navbar-toggler-icon"> <i class="fa fa-navicon"
					style="color: white; font-size: 28px"></i>
				</span>
			</button>
			<div class="collapse navbar-collapse" id="mynavbar">
				<ul class="navbar-nav me-auto">
					<li class="nav-item"><a class="nav-link"
						href="javascript:void(0)">Home</a></li>
					<!--<li class="nav-item">
					<a class="nav-link" href="javascript:void(0)">Hot Deals</a>
				  </li>
				  <li class="nav-item">
					<a class="nav-link" href="javascript:void(0)">Categories</a>
				  </li>-->
					<li class="nav-item"><a class="nav-link"
						href="javascript:void(0)">Laptops</a></li>
					<li class="nav-item"><a class="nav-link"
						href="javascript:void(0)">Smartphones</a></li>
					<li class="nav-item"><a class="nav-link"
						href="javascript:void(0)">Tvs</a></li>
					<li class="nav-item"><a class="nav-link"
						href="javascript:void(0)">Accessories</a></li>
				</ul>
			</div>
		</div>
	</nav>
	<!-- /SECTION -->
<!-------------------------GRUPPO--------------------------------------------->
	
	

<!-------------------------FABIO--------------------------------------------->
	
	<div class="container container--grid" id = "container">
		<!-- Grafica superiore %% immagine sfondo -->
		<div class = "row" id = "divContatti">
			<div class="col-sm-8">
				<div id = "centraContatti">
					<div class = "divContatto">
						<div class = "row">
							<div class="col-sm-4">
								<figure class = "figure">
									<img src = "../images/contattaci/telefono.png" width = 100%>
								</figure>
							</div>
							<div class="col-sm-8" id = "contatti">
								<p><strong>Cangeri Fabio </strong><a href = "tel:+393668401360">3668401360</a></p>
								<p><strong>Giacoia Stefano </strong><a href = "tel:+393883570017">3883570017</a></p>
								<p><strong>Muto Antonio </strong><a href = "tel:+393203557439">3203557439</a></p>
								<p><strong>Reda Francesco </strong><a href = "tel:+393338053611">3338053611</a></p>	
							</div>
						</div>
					</div>
					<div class = "divContatto">
						<div class = "row">
							<div class="col-sm-4">
								<figure class = "figure">
									<img src = "../images/contattaci/mail.png" width = 100%>
								</figure>
							</div>
							<div class="col-sm-8" id = "contatti">
								<p><strong>Cangeri Fabio </strong><a href = "mailto:fabiocangeri@gmail.com">fabiocangeri@gmail.com</a></p>
								<p><strong>Giacoia Stefano </strong><a href = "mailto:s.giacoia@gmail.com">s.giacoia@gmail.com</a></p>
								<p><strong>Muto Antonio </strong><a href = "mailto:antonio.muto09@gmail.com">antonio.muto09@gmail.com</a></p>
								<p><strong>Reda Francesco </strong><a href = "mailto:francescoreda02@gmail.com">francescoreda02@gmail.com</a></p>	
							</div>
						</div>
					</div>
				</div>
			</div>
			<div class="col-sm-4">
				<figure class = "figure">
					<img src = "../images/contattaci/non trovato.png" width = 100% class = "img-fluid">
				</figure>
			</div>
		</div>
	</div>
<!-------------------------FABIO--------------------------------------------->

	
	
	
	
<!-------------------------GRUPPO--------------------------------------------->	
	<!-- FOOTER -->
	<footer id="footer">
		<!-- top footer -->
		<div class="section">
			<!-- container -->
			<div class="container">
				<!-- row -->
				<div class="row">
					<div class="col-md-3 col-xs-6">
						<div class="footer">
							<h3 class="footer-title">About Us</h3>
							<p>We are a friend with a passion of tecnologies.</p>
							<ul class="footer-links">
								<li><a href="#"><i class="fa fa-map-marker"></i>1734
										Stonecoal Road</a></li>
								<li><a href="#"><i class="fa fa-phone"></i>+021-95-51-84</a></li>
								<li><a href="#"><i class="fa fa-envelope"></i>email@email.com</a></li>
							</ul>
						</div>
					</div>

					<div class="col-md-3 col-xs-6">
						<div class="footer">
							<h3 class="footer-title">Categories</h3>
							<ul class="footer-links">
								<li><a href="#">Hot deals</a></li>
								<li><a href="#">Laptops</a></li>
								<li><a href="#">Smartphones</a></li>
								<li><a href="#">Tvs</a></li>
								<li><a href="#">Accessories</a></li>
							</ul>
						</div>
					</div>
					<div class="col-md-3 col-xs-6">
						<div class="footer">
							<h3 class="footer-title">Information</h3>
							<ul class="footer-links">
								<li><a href="#">About Us</a></li>
								<li><a href="/contattaci">Contact Us</a></li>
								<li><a href="#">Work with Us</a></li>
								<li><a href="#">Privacy Policy</a></li>
								<li><a href="#">Terms & Conditions</a></li>
							</ul>
						</div>
					</div>

					<div class="col-md-3 col-xs-6">
						<div class="footer">
							<h3 class="footer-title">Service</h3>
							<ul class="footer-links">
								<li><a href="#">My Account</a></li>
								<li><a href="#">View Cart</a></li>
								<li><a href="#">Wishlist</a></li>
								<li><a href="#">Order and Returns</a></li>
								<li><a href="#">Help</a></li>
							</ul>
						</div>
					</div>
				</div>
				<!-- /row -->
			</div>
			<!-- /container -->
		</div>
		<!-- /top footer -->
	</footer>
	<!-- /FOOTER -->

	<script
		src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.6.0/jquery.min.js"
		integrity="sha512-894YE6QWD5I59HgZOGReFYm4dnWc1Qt5NtvYSaNcOP+u1T9qYdvdihz0PPSiiqn/+/3e7Jo4EaG7TubfWGUrMQ=="
		crossorigin="anonymous" referrerpolicy="no-referrer"></script>
	<script
		src="https://cdnjs.cloudflare.com/ajax/libs/OwlCarousel2/2.3.4/owl.carousel.min.js"
		integrity="sha512-bPs7Ae6pVvhOSiIcyUClR7/q2OAsRiovw4vAkX+zJbw3ShAeeqezq50RIIcIURq7Oa20rW2n2q+fyXBNcU9lrw=="
		crossorigin="anonymous" referrerpolicy="no-referrer"></script>
	<script src="js/index/index.js"></script>
<!-------------------------GRUPPO--------------------------------------------->
	

</body>
