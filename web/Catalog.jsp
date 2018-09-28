<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="en">
<head>
<title>Categories</title>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="description" content="Sublime project">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" type="text/css" href="styles/bootstrap4/bootstrap.min.css">
<link href="plugins/font-awesome-4.7.0/css/font-awesome.min.css" rel="stylesheet" type="text/css">
<link rel="stylesheet" type="text/css" href="plugins/OwlCarousel2-2.2.1/owl.carousel.css">
<link rel="stylesheet" type="text/css" href="plugins/OwlCarousel2-2.2.1/owl.theme.default.css">
<link rel="stylesheet" type="text/css" href="plugins/OwlCarousel2-2.2.1/animate.css">
<link rel="stylesheet" type="text/css" href="styles/categories.css">
<link rel="stylesheet" type="text/css" href="styles/categories_responsive.css">
</head>
<body>

<div class="super_container">

	<!-- Header -->

<div class="home">
		<div class="home_container">
			<div class="home_background" style="background-image:url(Images/Head3.jpg)"></div>
			<div class="home_content_container">
				<div class="container">
					<div class="row">
						<div class="col">
							<div class="home_content">
								<div class="home_title">CATALOGUE<span>.</span></div>
                                                                <div class="home_text"><p>Notre collection de savons artisanals 100% BIO.</p></div>
								
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
	<div class="products">
		<div class="container">
			<div class="row">
				<div class="col">
					
					<!-- Product Sorting -->
					<div class="sorting_bar d-flex flex-md-row flex-column align-items-md-center justify-content-md-start">
						<div class="results">Showing <span>12</span> results</div>
						<div class="sorting_container ml-md-auto">
							<div class="sorting">
								<ul class="item_sorting">
									<li>
										<span class="sorting_text">Trier par artisans</span>
										<i class="fa fa-chevron-down" aria-hidden="true"></i>
										<ul>
                                                                                    <li class="product_sorting_btn" data-isotope-option='{ "sortBy": "original-order" }'><span><a href="Catalog?artisanId=01">Savonerie seconde nature</a></span></li>
                                                                                    <li class="product_sorting_btn" data-isotope-option='{ "sortBy": "original-order" }'><span><a href="Catalog?artisanId=02">Savon des Cantons</a></span></li>
											
										</ul>
									</li>
								</ul>
							</div>
						</div>
					</div>
				</div>
			</div>
			<div class="row">
				<div class="col">
					
					<div class="product_grid">

						<!-- Product -->
                                                <c:forEach var="savon" items="${productsPerPage}" varStatus="loop" >
						<div class="product">
							<div class="product_image"><img src="${savon.photoProduit}" alt=""></div>							
							<div class="product_content">
								<div class="product_title"><a href="product.html">${savon.codeProduit}</a></div>
								<div class="product_price">$${savon.prixProduit}</div>
							</div>
						</div>
</c:forEach>


					</div>
					<div class="product_pagination">
						<ul>
							<li class="active"><a href="Catalog?pageId=01">01.</a></li>
							<li><a href="Catalog?pageId=02">02.</a></li>
							<li><a href="Catalog?pageId=03">03.</a></li>
						</ul>
					</div>
						
				</div>
			</div>
		</div>
	</div>

	

	
 <jsp:include page="WEB-INF/Footer.jspf"></jsp:include>
	
</div>

<script src="js/jquery-3.2.1.min.js"></script>
<script src="styles/bootstrap4/popper.js"></script>
<script src="styles/bootstrap4/bootstrap.min.js"></script>
<script src="plugins/greensock/TweenMax.min.js"></script>
<script src="plugins/greensock/TimelineMax.min.js"></script>
<script src="plugins/scrollmagic/ScrollMagic.min.js"></script>
<script src="plugins/greensock/animation.gsap.min.js"></script>
<script src="plugins/greensock/ScrollToPlugin.min.js"></script>
<script src="plugins/OwlCarousel2-2.2.1/owl.carousel.js"></script>
<script src="plugins/Isotope/isotope.pkgd.min.js"></script>
<script src="plugins/easing/easing.js"></script>
<script src="plugins/parallax-js-master/parallax.min.js"></script>
<script src="js/categories.js"></script>


</body>
</html>