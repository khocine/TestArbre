<%-- 
    Document   : Checkout
    Created on : Sep 16, 2018, 2:30:16 PM
    Author     : pc
--%>

<!DOCTYPE html>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html lang="en">
<head>
<title>Checkout</title>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="description" content="Sublime project">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" type="text/css" href="styles/bootstrap4/bootstrap.min.css">
<link href="plugins/font-awesome-4.7.0/css/font-awesome.min.css" rel="stylesheet" type="text/css">
<link rel="stylesheet" type="text/css" href="styles/checkout.css">
<link rel="stylesheet" type="text/css" href="styles/checkout_responsive.css">
<script src="js/app.js" type="text/javascript"></script>
</head>
<body>

<div class="super_container">

	<!-- Header -->

	
	
	<!-- Home -->

	<div class="home">
		<div class="home_container">
			<div class="home_background" style="background-image:url(Images/Head1.jpg)"></div>
			<div class="home_content_container">
				<div class="container">
					<div class="row">
						<div class="col">
							<div class="home_content">
								<div class="breadcrumbs">
									<ul>
										<li><a href="index.html">Home</a></li>
									
										<li>Checkout</li>
									</ul>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>

	<!-- Checkout -->
	
	<div class="checkout">
		<div class="container">
			<div class="row">

				<!-- Billing Info -->
				<div class="col-lg-6" id = "formClient" style="display:none">   <!-- DISPLAY ICI Info -->
					<jsp:include page="WEB-INF/Login.jsp"></jsp:include>
                                </div>

				<!-- Order Info -->

				<div class="col-lg-6">
					<div class="order checkout_section">
						<div class="section_title">Your order</div>
						<div class="section_subtitle">Order details</div>

						<!-- Order details -->
						<div class="order_list_container">
							<div class="order_list_bar d-flex flex-row align-items-center justify-content-start">
								<div class="order_list_title">Product</div>
								<div class="order_list_value ml-auto">Total</div>
							</div>
                                                    
							<ul class="order_list">
                                                            <c:forEach varStatus="loop" items="${gs.cart.myCart}" var="ligne">  
								<li class="d-flex flex-row align-items-center justify-content-start">
									<div class="order_list_title">${ligne.produits.name} X ${ligne.quantite} </div>
									<div class="order_list_value ml-auto">$  ${ligne.totalLigne}</div>
								</li>
                                                                </c:forEach>
								<li class="d-flex flex-row align-items-center justify-content-start">
									<div class="order_list_title">Subtotal</div>
									<div class="order_list_value ml-auto">$ ${total}</div>
								</li>
								<li class="d-flex flex-row align-items-center justify-content-start">
									<div class="order_list_title">Shipping</div>
									<div class="order_list_value ml-auto" >${delivery_price}</div>
								</li>
								<li class="d-flex flex-row align-items-center justify-content-start">
									<div class="order_list_title">Total TTC</div>
									<div class="order_list_value ml-auto">$ ${totalTTC_Shipping}</div>
								</li>
							</ul>
						</div>
                                                             <form action="Commande" id="order" method="post"> 
						<!-- Payment Options -->
						<div class="payment">
							<div class="payment_options">
								<label class="payment_option clearfix">Paypal
									<input type="radio" name="radio">
									<span class="checkmark"></span>
								</label>
								<label class="payment_option clearfix">Cach on delivery
									<input type="radio" name="radio">
									<span class="checkmark"></span>
								</label>
								<label class="payment_option clearfix">Credit card
									<input type="radio" name="radio">
									<span class="checkmark"></span>
								</label>
								<label class="payment_option clearfix">Direct bank transfer
									<input type="radio" checked="checked" name="radio">
									<span class="checkmark"></span>
								</label>
							</div>
						</div>

						<!-- Order Text -->
						<div class="order_text">Lorem ipsum dolor sit amet, consectetur adipiscing elit. Proin pharetra temp or so dales. Phasellus sagittis auctor gravida. Integ er bibendum sodales arcu id te mpus. Ut consectetur lacus.</div>
						<div class="button order_button" onclick="placeOrder()"><a href="#" onclick="return false;">Place Order</a></div>
                                                <input type="hidden" id="client" value="${connected}"/>
                                                             </form>
                                                       
					</div>
				</div>
                                                                
                                                                
                                    <!-- picture order -->                            
                                <div class="col-lg-6" id="imgDelivery" style="display: inline">
					<div class="details_image">
						<div class="details_image_large"><img src="Images/delivery.jpg" alt=""></div>
						
					</div>
				</div>
                                                                
                                                                
                                                                
                                                                
			</div>
		</div>
	</div>

	<!-- Footer -->
	
	 <jsp:include page="WEB-INF/Footer.jspf"></jsp:include>
	
</div>

<script src="js/jquery-3.2.1.min.js"></script>
 <script src="js/jquery.autocomplete.min.js" type="text/javascript"></script>
        <script src="js/productautocomplete.js" type="text/javascript"></script>
<script src="styles/bootstrap4/popper.js"></script>
<script src="styles/bootstrap4/bootstrap.min.js"></script>
<script src="plugins/greensock/TweenMax.min.js"></script>
<script src="plugins/greensock/TimelineMax.min.js"></script>
<script src="plugins/scrollmagic/ScrollMagic.min.js"></script>
<script src="plugins/greensock/animation.gsap.min.js"></script>
<script src="plugins/greensock/ScrollToPlugin.min.js"></script>
<script src="plugins/easing/easing.js"></script>
<script src="plugins/parallax-js-master/parallax.min.js"></script>
<script src="js/checkout.js"></script>
</body>
</html>