<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html>
<html>

<head>
	<!-- Termini accentati -->
	<meta charset="utf-8">
	
	<!-- Favicon -->
	<link rel="icon" href="../images/index/logo.png" type="image/x-icon"/>
	
	<!-- Titolo -->
	<title>View curriculum</title>
	
	<!-- CSS -->
	<link href="css/admin/report.css" rel="stylesheet" type="text/css" />
	<link href="css/admin/visualizzaCurriculum.css" rel="stylesheet" type="text/css" />
	
	<!-- Bootstrap -->
	<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.2/dist/css/bootstrap.min.css" rel="stylesheet">
  	<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.2/dist/js/bootstrap.bundle.min.js"></script>	

	<!-- JS -->
	<script src="js/admin/report_visualizzaCV/pulsanteCancella.js"></script>
	<script src="js/admin/visualizzaCV/visualizzaCV.js"></script>
	<script src="js/admin/visualizzaCV/chiamateAjax.js"></script>

	<!--AJAX ha la dipendenza nel pom -->
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
	
<!------------------------GRUPPO-------------------------------------------->	
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport"
	content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=0" />
<link type="text/css" rel="stylesheet" href="css/index/style.css" />
<link rel="icon" href="images/index/logo.png" type="image/x-icon" />
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.4/css/all.min.css"
	integrity="sha512-1ycn6IcaQQ40/MKBW2W4Rhis/DbILU74C1vSrLJxCq57o941Ym01SwNsOMqvEBFlcgUa6xLiPY/NS5R+E6ztJQ=="
	crossorigin="anonymous" referrerpolicy="no-referrer" />
<!-- CSS only -->
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css"
	rel="stylesheet">
<script
	src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.2/dist/js/bootstrap.bundle.min.js"></script>
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/OwlCarousel2/2.3.4/assets/owl.theme.default.css"
	integrity="sha512-OTcub78R3msOCtY3Tc6FzeDJ8N9qvQn1Ph49ou13xgA9VsH9+LRxoFU6EqLhW4+PKRfU+/HReXmSZXHEkpYoOA=="
	crossorigin="anonymous" referrerpolicy="no-referrer" />
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/OwlCarousel2/2.3.4/assets/owl.carousel.min.css"
	integrity="sha512-tS3S5qG0BlhnQROyJXvNjeEM4UpMXHrQfTGmbQ1gKmelCxlSEBUaxhRBj/EFTzpbP4RVSrpEikbmdJobCvhE3g=="
	crossorigin="anonymous" referrerpolicy="no-referrer" />
<link href="../css/guidaSceltaProdotto/guidaSceltaProdotto.css"
	rel="stylesheet" type="text/css" />
<script src="js/Signup/signUp.js"></script>
<script src="https://apis.google.com/js/platform.js" async defer></script>
  <script src="https://apis.google.com/js/platform.js?onload=onLoad" async defer></script>
<meta name="google-signin-client_id"
	content="397262973292-raelfe22asjtmti3g7f4idddbjl30mn3.apps.googleusercontent.com">
<script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
<!------------------------GRUPPO-------------------------------------------->	
	
</head>
<body>

<!------------------------GRUPPO-------------------------------------------->	

    <!-- HEADER -->
    <header>
        <!-- TOP HEADER -->
        <div id="top-header">
            <div class="container">
                <ul class="header-links pull-left">
                    <li><a href="mailto:teachplanet22@gmail.com"><i class="fa fa-envelope"></i>techPlanet2022@gmail.com</a></li>
					<li><a href="http://www.shorturl.at/nwES4"><i class="fa fa-map-marker"></i>Ponte Pietro Bucci, 87036 Quattromiglia CS</a></li>
					<li><a href="#"><i class="fas fa-dollar-sign"></i> USD</a></li>
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
                            <a href="/" class="logo">
                                <img id="logo" src="images/index/logo.png" alt="">
                            </a>
                        </div>
                    </div>
                    <!-- /LOGO -->

                    <!-- ACCOUNT -->
                    <div class="col-md-9">
                        <div class="header-ctn">

							<div style="padding-right: 3%; margin-top: 3%">
                            	<a href="adminPage" style="text-decoration: none;">
                           		<i class="fa fa-home"></i></a>
                            </div>

                            <!-- Wishlist -->
                            <div style="padding-right: 3%; margin-top: 3%" id="firstElement">
                                <a href="addProduct" style="text-decoration: none;">
                                    <i class="fas fa-cart-plus" id="add"></i>
                                    <!--<div class="qty">0</div>-->
                                </a>
                            </div>

                            <div style="padding-right: 3%; margin-top: 3%">
                                <a href="deleteProd" style="text-decoration: none;">
                                    <i class="fas fa-trash" id="trash"></i>
                                    <!--<div class="qty">0</div>-->
                                </a>
                            </div>

                            <!-- Cart -->
                            <div style="padding-right: 3%; margin-top: 3%">
                                <a href="modifyProd" style="text-decoration: none;">
                                    <i class="fas fa-edit"></i>
                                    <!--<div class="qty">0</div>-->
                                </a>
                            </div>

                            <div style="padding-right: 3%; margin-top: 3%">
                                <a href="returnRequests" style="text-decoration: none;">
                                    <i class="fas fa-truck-loading" id="truck2"></i></a>
                            </div>
                            <!-- /Cart -->

                            <div style="padding-right: 3%; margin-top: 3%">
                                <a href="addAdmin" style="text-decoration: none;">
                                    <i class="fas fa-user-tie" id="addAdmin"></i></a>
                            </div>

                            <div style="padding-right: 3%; margin-top: 3%">
                                <a href="deleteAdmin" style="text-decoration: none;">
                                    <i class="fas fa-user-slash" id="deleteAdmin"></i></a>
                            </div>

                            <div style="padding-right: 3%; margin-top: 3%">
                                <a href="/viewJobs" style="text-decoration: none;">
                                    <i class="fas fa-user-plus" id="positions"></i></a>
                            </div>
                            
                            <div style="padding-right: 3%; margin-top: 3%">
                                <a href="/viewReports" style="text-decoration: none;">
                                    <i class="fas fa-bug" id="report"></i>
                                    <!--<div class="qty">0</div>-->
                                </a>
                            </div>

                        </div>
                    </div>
                </div>
            </div>
        </div>
    </header>
    <!--/HEADER-->

<!------------------------GRUPPO-------------------------------------------->	

<!------------------------FABIO-------------------------------------------->

		<h1 id = "titolo">All curriculum received</h1>
		<br />
		<div id = "scegliCurriculum">
			<nobr>View job-related resumes</nobr>
			<select id = "lavori" name = "lavori" onchange = "caricaCurriculum()">
				 <option value="all">All</option>
				 <c:forEach items="${lavori}" var="job">
				 	<option value="${job.title}">${job.title}</option>
				 </c:forEach>
			</select>
		</div>
		<br />
		<table id="tabellaCV" class="table table-borderless">
			<thead>
				<tr>
					<th data-title = "Select deselect all" ><input type="checkbox" id = "checkBoxTh" onchange = "checkBoxTh()" /></th>
					<th id = "scopeWork">Scope work</th>
					<th id = "personalData">Personal data</th>
					<th id = "educationWork">Education and work</th>
					<th id = "photoCurriculum">Photo</th>
					<th id = "photoCurriculum">Curriculum</th>
					<th id = "presentation">Presentation</th>
				</tr>
			</thead>
			<tbody>			
			</tbody>
		</table>
		
		<br/>
			<div id = "pulsanti">
				<input class="btn btn-danger" id="btnCancella" type="button" value="Delete report" />
			</div>
		<br/><br/>

<!------------------------FABIO-------------------------------------------->

<!------------------------GRUPPO-------------------------------------------->	

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
								<li><a href="http://www.shorturl.at/nwES4"><i class="fa fa-map-marker"></i>Ponte Pietro Bucci, 87036 Quattromiglia CS</a></li>
								<li><a href="mailto:teachplanet22@gmail.com"><i class="fa fa-envelope"></i>teachplanet22@gmail.com</a></li>
							</ul>
						</div>
					</div>

					<div class="col-md-3 col-xs-6">
						<div class="footer">
							<h3 class="footer-title">Categories</h3>
							<ul class="footer-links">
								<li><a href="notebooksGallery.html">Notebooks</a></li>
								<li><a href="smartphonesGallery.html">Smartphones</a></li>
								<li><a href="tvsGallery.html">Tvs</a></li>
								<li><a href="printersGallery.html">Printers</a></li>
								<li><a href="camerasGallery.html">Cameras</a></li>
								<li><a href="accessoriesGallery.html">Accessories</a></li>
							</ul>
						</div>
					</div>
					<div class="col-md-3 col-xs-6">
						<div class="footer">
							<h3 class="footer-title">Information</h3>
							<ul class="footer-links">
								<li><a href="/aboutUs.html">About Us</a></li>
								<li><a href="/contactUs">Contact Us</a></li>
								<li><a href="/workWithUs/workInCompany">Work with Us</a></li>
								<li><a href="/privacyPolicy">Privacy Policy</a></li>
								<li><a href="/termsAndConditions">Terms & Conditions</a></li>
							</ul>
						</div>
					</div>

					<div class="col-md-3 col-xs-6">
						<div class="footer">
							<h3 class="footer-title">Service</h3>
							<ul class="footer-links">
								<li><a href="account.html">My Account</a></li>
								<li><a href="cart.html">View Cart</a></li>
								<li><a href="wishList.html">Wishlist</a></li>
								<li><a href="/myOrder.html">Order and Returns</a></li>
								<li><a href="/customerSupport">Customer Support</a></li>
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
	
<!------------------------GRUPPO-------------------------------------------->	

</body>
</html>