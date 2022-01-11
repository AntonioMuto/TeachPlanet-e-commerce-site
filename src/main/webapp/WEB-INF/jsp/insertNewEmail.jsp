<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="it">

<head>
	<meta charset="utf-8">
	<meta http-equiv="X-UA-Compatible" content="IE=edge">
	<meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=0" />
	<link type="text/css" rel="stylesheet" href="css/login/login_style.css"/>
	<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
	<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.4/css/all.min.css" integrity="sha512-1ycn6IcaQQ40/MKBW2W4Rhis/DbILU74C1vSrLJxCq57o941Ym01SwNsOMqvEBFlcgUa6xLiPY/NS5R+E6ztJQ==" crossorigin="anonymous" referrerpolicy="no-referrer" />
	<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet">
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.2/dist/js/bootstrap.bundle.min.js"></script>
    <script src="//ajax.googleapis.com/ajax/libs/jquery/1.9.1/jquery.min.js"></script>
</head>
<title>TechPlanet</title>
</head>
<body id="b" class="gradient-custom">
	<section class="vh-120">
		<div class="container py-3 h-100">
		  <div class="row d-flex justify-content-center align-items-center h-10">
			<div class="col-12 col-md-8 col-lg-6 col-xl-5">
			  <div class="card bg-dark text-white" style="border-radius: 1rem;">
				<div class="card-body p-3 text-center">
				  <div class="mb-md-10 mt-md-2 pb-4">
					  <h2 style="color: cornsilk;" class="fw-bold mb-2 text-uppercase">CHANGE EMAIl</h2>
					<img src="/images/index/logo.png" alt="">
					<c:if test="${errore == 'si'}">
					<form action="updateEmail">
					<div class="form-outline form-white mb-3">
					  <input type="email" name="email" placeholder="enter new Email here" id="typeCode" class="form-control form-control-lg" required pattern="[a-z0-9._%+-]+@[a-z0-9.-]+\.[a-z]{2,3}$"/>
					</div>
					<div id="fail" class="alert-box failure">the email entered is associated with an existing account</div>
					<a>
						<button class="btn btn-outline-light btn-lg px-5" type="submit">Confirm</button>
					</a>
					</form>
					</c:if>
					<c:if test="${errore != 'si'}">				
					<form action="updateEmail">
					<div class="form-outline form-white mb-3">
					  <input type="email" name="email" placeholder="enter new Email here" id="typeCode" class="form-control form-control-lg" pattern="[a-z0-9._%+-]+@[a-z0-9.-]+\.[a-z]{2,3}$" />
					</div>
					<a>
						<button class="btn btn-outline-light btn-lg px-5" type="submit">Confirm</button>
					</a>
					</form>
					</c:if>
				  </div>
				</div>
			  </div>
			</div>
		  </div>
		</div>
	</section>
</body>

</html>