<%@ page contentType="text/html; charset=UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<!DOCTYPE html>
<html lang="en">
<head>
<title>Cart</title>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="description" content="OneTech shop project">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" type="text/css"
	href="sources/styles/bootstrap4/bootstrap.min.css">
<link
	href="sources/plugins/fontawesome-free-5.0.1/css/fontawesome-all.css"
	rel="stylesheet" type="text/css">
<link rel="stylesheet" type="text/css"
	href="sources/styles/cart_styles.css">
<link rel="stylesheet" type="text/css"
	href="sources/styles/cart_responsive.css">

</head>

<body>

	<div class="super_container">

		<!-- Header -->
		<jsp:include page="elements/header.jsp"></jsp:include>

		<!-- Cart -->

		<div class="cart_section">
			<div class="container">
				<div class="row">
					<div class="col-lg-10 offset-lg-1">
						<div class="cart_container">
							<div class="cart_title">Shopping Cart</div>
							<div class="cart_items">
								<ul class="cart_list">
									<s:iterator value="products" var="product">
										<li class="cart_item clearfix">
											<div class="cart_item_image">
												<img src="images/shopping_cart.jpg" alt="">
											</div>
											<div
												class="cart_item_info d-flex flex-md-row flex-column justify-content-between">

												<div class="cart_item_quantity cart_info_col">
													<div class="cart_item_title">ID</div>
													<div class="cart_item_text">
														<s:property value="key.id" />
													</div>
												</div>

												<div class="cart_item_name cart_info_col">
													<div class="cart_item_title">Name</div>
													<div class="cart_item_text">
														<s:property value="key.TenSanPham" />
													</div>
												</div>
												<div class="cart_item_color cart_info_col">
													<div class="cart_item_title">Color</div>
													<div class="cart_item_text">
														<span style="background-color: #999999;"></span>Silver
													</div>
												</div>
												<div class="cart_item_quantity cart_info_col">
													<div class="cart_item_title">Amount</div>
													<div class="cart_item_text" align="center" >
														<s:property value="value" />
													</div>
												</div>
												<div class="cart_item_price cart_info_col">
													<div class="cart_item_title">Price</div>
													<div class="cart_item_text">
														<s:property value="key.GiaBan" />
													</div>
												</div>
												<div class="cart_item_price cart_info_col">
													<div class="cart_item_title">Option</div>
													<div class="cart_item_text">
														<s:a action = "remove_to_cart">Remove</s:a>
													</div>
													
												</div>
												
											</div>
										</li>
									</s:iterator>
								</ul>
							</div>

							<!-- Order Total -->
							<div class="order_total">
								<div class="order_total_content text-md-right">
									<div class="order_total_title">Order Total:</div>
									<div class="order_total_amount">
										<s:property value="total" />
									</div>
								</div>
							</div>

							<div class="cart_buttons">
								<button type="button" class="button cart_button_clear"><s:a action="">Continue shopping</s:a></button>
								<button type="button" class="button cart_button_checkout">Check out</button>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>

		<!-- Newsletter -->

		<div class="newsletter">
			<div class="container">
				<div class="row">
					<div class="col">
						<div
							class="newsletter_container d-flex flex-lg-row flex-column align-items-lg-center align-items-center justify-content-lg-start justify-content-center">
							<div class="newsletter_title_container">
								<div class="newsletter_icon">
									<img src="images/send.png" alt="">
								</div>
								<div class="newsletter_title">Sign up for Newsletter</div>
								<div class="newsletter_text">
									<p>...and receive %20 coupon for first shopping.</p>
								</div>
							</div>
							<div class="newsletter_content clearfix">
								<form action="#" class="newsletter_form">
									<input type="email" class="newsletter_input"
										required="required" placeholder="Enter your email address">
									<button class="newsletter_button">Subscribe</button>
								</form>
								<div class="newsletter_unsubscribe_link">
									<a href="#">unsubscribe</a>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>

		<!-- Footer -->

		<jsp:include page="elements/footer.jsp"></jsp:include>

		<!-- Copyright -->

		<div class="copyright">
			<div class="container">
				<div class="row">
					<div class="col">

						<div
							class="copyright_container d-flex flex-sm-row flex-column align-items-center justify-content-start">
							<div class="copyright_content">
								<!-- Link back to Colorlib can't be removed. Template is licensed under CC BY 3.0. -->
								Copyright &copy;
								<script>
									document.write(new Date().getFullYear());
								</script>
								All rights reserved | This template is made with <i
									class="fa fa-heart" aria-hidden="true"></i> by <a
									href="https://colorlib.com" target="_blank">Colorlib</a>
								<!-- Link back to Colorlib can't be removed. Template is licensed under CC BY 3.0. -->
							</div>
							<div class="logos ml-sm-auto">
								<ul class="logos_list">
									<li><a href="#"><img src="images/logos_1.png" alt=""></a></li>
									<li><a href="#"><img src="images/logos_2.png" alt=""></a></li>
									<li><a href="#"><img src="images/logos_3.png" alt=""></a></li>
									<li><a href="#"><img src="images/logos_4.png" alt=""></a></li>
								</ul>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>


</body>

</html>