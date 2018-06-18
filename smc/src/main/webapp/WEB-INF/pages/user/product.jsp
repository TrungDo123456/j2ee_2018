<%@ page contentType="text/html; charset=UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<!DOCTYPE html>
<html lang="en">
<head>
<title>Single Product</title>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="description" content="OneTech shop project">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" type="text/css" href="sources/styles/bootstrap4/bootstrap.min.css">
<link href="sources/plugins/fontawesome-free-5.0.1/css/fontawesome-all.css" rel="stylesheet" type="text/css">
<link rel="stylesheet" type="text/css" href="sources/plugins/OwlCarousel2-2.2.1/owl.carousel.css">
<link rel="stylesheet" type="text/css" href="sources/plugins/OwlCarousel2-2.2.1/owl.theme.default.css">
<link rel="stylesheet" type="text/css" href="sources/plugins/OwlCarousel2-2.2.1/animate.css">
<link rel="stylesheet" type="text/css" href="sources/styles/product_styles.css">
<link rel="stylesheet" type="text/css" href="sources/styles/product_responsive.css">

</head>

<body>


	
	<!-- Header -->
	<jsp:include page="elements/header.jsp"></jsp:include>
	
	<!-- Single Product -->

	<div class="single_product">
		<div class="container">
			<div class="row">

				<!-- Images -->
				<div class="col-lg-2 order-lg-1 order-2">
					<ul class="image_list">
						<li data-image="images/single_4.jpg"><img src="images/single_4.jpg" alt=""></li>
						<li data-image="images/single_2.jpg"><img src="images/single_2.jpg" alt=""></li>
						<li data-image="images/single_3.jpg"><img src="images/single_3.jpg" alt=""></li>
					</ul>
				</div>

				<!-- Selected Image -->
				<div class="col-lg-5 order-lg-2 order-1">
					<div class="image_selected"><img src="images/single_4.jpg" alt=""></div>
				</div>

				<!-- Description -->
				<div class="col-lg-5 order-3">
					<div class="product_description">
						<!-- <div class="product_category">Laptops</div> -->
						
						<div class="product_name"><s:property value="sp.TenSanPham"></s:property></div>
						<div class="rating_r rating_r_4 product_rating"><i></i><i></i><i></i><i></i><i></i></div>
						<div class="product_text"><p><s:property value="sp.MoTa"></s:property>.</p></div>
						<div class="order_info d-flex flex-row">
							<form action="#">
								<div class="clearfix" style="z-index: 1000;">

									<!-- Product Quantity -->
									<div class="product_quantity clearfix">
										<span>Amount : </span>
										<input name="amount" id="quantity_input" type="text" pattern="[0-9]*" value = "1"/>
										<div class="quantity_buttons">
											<div id="quantity_inc_button" class="quantity_inc quantity_control"><i class="fas fa-chevron-up"></i></div>
											<div id="quantity_dec_button" class="quantity_dec quantity_control"><i class="fas fa-chevron-down"></i></div>
										</div>
										
									
									</div>
								</div>

								<div class="product_price">$ <s:property value="sp.GiaBan"></s:property></div>
								<div class="button_container">
									<script>
									function myFunction() {
										var x = document.getElementById("quantity_input").value;
									    var url = "add_specific_to_cart?newProductId=<s:property value="sp.id"/>&amount=" + x;
									    var element = document.getElementById('id');
									    element.setAttribute("href",url)
									}
									</script>
									<a id="id" onclick="myFunction()" style="font-size:20px;" href="#" >Add to cart</a>
									
								
									<div class="product_fav"><i class="fas fa-heart"></i></div>
								</div>
								
							</form>
						</div>
					</div>
				</div>

			</div>
		</div>
	</div>

	<!-- Footer -->
	<jsp:include page="elements/footer.jsp"></jsp:include>

	

<script src="sources/js/jquery-3.3.1.min.js"></script>
<script src="sources/styles/bootstrap4/popper.js"></script>
<script src="sources/styles/bootstrap4/bootstrap.min.js"></script>
<script src="sources/plugins/greensock/TweenMax.min.js"></script>
<script src="sources/plugins/greensock/TimelineMax.min.js"></script>
<script src="sources/plugins/scrollmagic/ScrollMagic.min.js"></script>
<script src="sources/plugins/greensock/animation.gsap.min.js"></script>
<script src="sources/plugins/greensock/ScrollToPlugin.min.js"></script>
<script src="sources/plugins/OwlCarousel2-2.2.1/owl.carousel.js"></script>
<script src="sources/plugins/easing/easing.js"></script>
<script src="sources/js/product_custom.js"></script>
</body>

</html>