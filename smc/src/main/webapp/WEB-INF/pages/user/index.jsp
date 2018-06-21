<%@ page contentType="text/html; charset=UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<!DOCTYPE html>
<html lang="en">
<head>
<title>Trang chu</title>
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
	href="sources/plugins/OwlCarousel2-2.2.1/owl.carousel.css">
<link rel="stylesheet" type="text/css"
	href="sources/plugins/OwlCarousel2-2.2.1/owl.theme.default.css">
<link rel="stylesheet" type="text/css"
	href="sources/plugins/OwlCarousel2-2.2.1/animate.css">
<link rel="stylesheet" type="text/css"
	href="sources/plugins/slick-1.8.0/slick.css">
<link rel="stylesheet" type="text/css"
	href="sources/styles/main_styles.css">
<link rel="stylesheet" type="text/css"
	href="sources/styles/responsive.css">

</head>

<body>
	<div class="super_container">

		<!-- Header -->

		<jsp:include page="elements/header.jsp"></jsp:include>

		<!-- Banner -->

		<div class="banner">
			<div class="banner_background"
				style="background-image: url(sources/images/banner_background.jpg)"></div>
			<div class="container fill_height">
				<div class="row fill_height">
					<div class="banner_product_image">
						<img src="sources/images/banner_product.png" alt="">
					</div>
					<div class="col-lg-5 offset-lg-4 fill_height">
						<div class="banner_content">
							<h1 class="banner_text">new era of smartphones</h1>
							<div class="banner_price">
								<span>$530</span>$460
							</div>
							<div class="banner_product_name">Apple Iphone 6s</div>
							<div class="button banner_button">
								<a href="/smc">Shop Now</a>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>

		<!-- Characteristics -->

		<div class="characteristics">
			<div class="container">
				<div class="row">

					<!-- Char. Item -->
					<div class="col-lg-3 col-md-6 char_col">

						<div
							class="char_item d-flex flex-row align-items-center justify-content-start">
							<div class="char_icon">
								<img src="sources/images/char_1.png" alt="">
							</div>
							<div class="char_content">
								<div class="char_title">Free Delivery</div>
								<div class="char_subtitle">from $50</div>
							</div>
						</div>
					</div>

					<!-- Char. Item -->
					<div class="col-lg-3 col-md-6 char_col">

						<div
							class="char_item d-flex flex-row align-items-center justify-content-start">
							<div class="char_icon">
								<img src="sources/images/char_2.png" alt="">
							</div>
							<div class="char_content">
								<div class="char_title">Free Delivery</div>
								<div class="char_subtitle">from $50</div>
							</div>
						</div>
					</div>

					<!-- Char. Item -->
					<div class="col-lg-3 col-md-6 char_col">

						<div
							class="char_item d-flex flex-row align-items-center justify-content-start">
							<div class="char_icon">
								<img src="sources/images/char_3.png" alt="">
							</div>
							<div class="char_content">
								<div class="char_title">Free Delivery</div>
								<div class="char_subtitle">from $50</div>
							</div>
						</div>
					</div>

					<!-- Char. Item -->
					<div class="col-lg-3 col-md-6 char_col">

						<div
							class="char_item d-flex flex-row align-items-center justify-content-start">
							<div class="char_icon">
								<img src="sources/images/char_4.png" alt="">
							</div>
							<div class="char_content">
								<div class="char_title">Free Delivery</div>
								<div class="char_subtitle">from $50</div>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>

		<!-- Deals of the week -->

		<div class="deals_featured">
			<div class="container">
				<div class="row">
					<div
						class="col d-flex flex-lg-row flex-column align-items-center justify-content-start">

						<!-- Deals -->

						<div class="deals">
							<div class="deals_title">Deals of the Week</div>
							<div class="deals_slider_container">

								<!-- Deals Slider -->
								<div class="owl-carousel owl-theme deals_slider">
									<s:iterator value="lstSanPhamKhuyenMai">
										<!-- Deals Item -->
										<div class="owl-item deals_item">
											<div class="deals_image">
												<img src="sources/images/deals.png" alt="">
											</div>
											<div class="deals_content">
												<div
													class="deals_info_line d-flex flex-row justify-content-start">
													<div class="deals_item_category">
														<a style="font-size:15px;" href="view_product?getProductId=<s:property value="id"/>"><s:property
																			value="TenSanPham"/></a>
													</div>
													<div class="deals_item_price_a ml-auto">
														$
														<s:property value="GiaBan"></s:property>
													</div>
												</div>
												<div
													class="deals_info_line d-flex flex-row justify-content-start">
													<div class="deals_item_name">
														<s:property value="TenSanPham"></s:property>
													</div>
													<div class="deals_item_price ml-auto">
														$
														<s:property value="GiaBanMoi"></s:property>
													</div>
												</div>
												<div class="available">
													<div
														class="available_line d-flex flex-row justify-content-start">
														<div class="available_title">
															Available: <span><s:property value="SoLuong"></s:property></span>
														</div>
														<div class="sold_title ml-auto">
															Already sold: <span><s:property value="SuDung"></s:property></span>
														</div>
													</div>
													<div class="available_bar">
														<span style="width: 17%"></span>
													</div>
												</div>
												<div
													class="deals_timer d-flex flex-row align-items-center justify-content-start">
													<div class="deals_timer_title_container">
														<div class="deals_timer_title">Hurry Up</div>
														<div class="deals_timer_subtitle">Offer ends in:</div>
													</div>
													<div class="deals_timer_content ml-auto">
														<div class="deals_timer_box clearfix" data-target-time="">
															<div class="deals_timer_unit">
																<div id="deals_timer1_hr" class="deals_timer_hr"></div>
																<span>hours</span>
															</div>
															<div class="deals_timer_unit">
																<div id="deals_timer1_min" class="deals_timer_min"></div>
																<span>mins</span>
															</div>
															<div class="deals_timer_unit">
																<div id="deals_timer1_sec" class="deals_timer_sec"></div>
																<span>secs</span>
															</div>
														</div>
													</div>
												</div>
											</div>
										</div>
									</s:iterator>
								</div>

							</div>

							<div class="deals_slider_nav_container">
								<div class="deals_slider_prev deals_slider_nav">
									<i class="fas fa-chevron-left ml-auto"></i>
								</div>
								<div class="deals_slider_next deals_slider_nav">
									<i class="fas fa-chevron-right ml-auto"></i>
								</div>
							</div>
						</div>

						<!-- Featured -->
						<div class="featured">
							<div class="tabbed_container">
								<div class="tabs">
									<ul class="clearfix">
										<li class="active">Featured</li>
										<li>On Sale</li>
										<li>Best Rated</li>
									</ul>
									<div class="tabs_line">
										<span></span>
									</div>
								</div>

								<!-- Product Panel -->
								<div class="product_panel panel active">
									<div class="featured_slider slider">

										<s:iterator value="lstSanPham">
											<!-- Slider Item -->
											<div class="featured_slider_item">
												<div class="border_active"></div>
												<div
													class="product_item is_new d-flex flex-column align-items-center justify-content-center text-center">
													<div
														class="product_image d-flex flex-column align-items-center justify-content-center">
														<img src="sources/images/featured_2.png" alt="">
													</div>
													<div class="product_content">
														<div class="product_price">
															$
															<s:property value="GiaBan"></s:property>
														</div>
														<div class="product_name">
															<div>
																<a style="font-size:15px;" href="view_product?getProductId=<s:property value="id"/>"><s:property
																			value="TenSanPham"/></a>
															</div>
														</div>
																
														<div class="product_extras">
														
																<a style="font-size:20px;" href="add_to_cart?newProductId=<s:property value="id"/>">Add to cart</a>
																
														</div>
													</div>
													<div class="product_fav">
														<i class="fas fa-heart"></i>
													</div>
													<ul class="product_marks">
														<li class="product_mark product_discount"></li>
														<li class="product_mark product_new">new</li>
													</ul>
												</div>
											</div>
										</s:iterator>


									</div>
									<div class="featured_slider_dots_cover"></div>
								</div>

								<!-- Product Panel -->

								<div class="product_panel panel">
									<div class="featured_slider slider">
										<s:iterator value="lstSanPhamKhuyenMai">
											<!-- Slider Item -->
											<div class="featured_slider_item">
												<div class="border_active"></div>
												<div
													class="product_item discount d-flex flex-column align-items-center justify-content-center text-center">
													<div
														class="product_image d-flex flex-column align-items-center justify-content-center">
														<img src="sources/images/featured_1.png" alt="">
													</div>
													<div class="product_content">
														<div class="product_price discount">
															$
															<s:property value="GiaBanMoi"></s:property>
															<span>$<s:property value="GiaBan"></s:property></span>
														</div>
														<div class="product_name">
															<div>
																<a style="font-size:15px;" href="view_product?getProductId=<s:property value="id"/>"><s:property
																			value="TenSanPham"/></a>
															</div>
														</div>
														<div class="product_extras">
															<!-- <div class="product_color">
																<input type="radio" checked name="product_color"
																	style="background: #b19c83"> <input
																	type="radio" name="product_color"
																	style="background: #000000"> <input
																	type="radio" name="product_color"
																	style="background: #999999">
															</div> -->
															<button class="product_cart_button">Add to Cart</button>
														</div>
													</div>
													<div class="product_fav">
														<i class="fas fa-heart"></i>
													</div>
													<ul class="product_marks">
														<li class="product_mark product_discount">-25%</li>
														<li class="product_mark product_new">new</li>
													</ul>
												</div>
											</div>
										</s:iterator>
									</div>
									<div class="featured_slider_dots_cover"></div>
								</div>

								<!-- Product Panel -->

								<div class="product_panel panel">
									<div class="featured_slider slider">
										<s:iterator value="lstSanPham">
											<!-- Slider Item -->
											<div class="featured_slider_item">
												<div class="border_active"></div>
												<div
													class="product_item d-flex flex-column align-items-center justify-content-center text-center">
													<div
														class="product_image d-flex flex-column align-items-center justify-content-center">
														<img src="sources/images/featured_6.png" alt="">
													</div>
													<div class="product_content">
														<div class="product_price">
															$
															<s:property value="GiaBan"></s:property>
														</div>
														<div class="product_name">
															<div>
																<a href="product.html"><s:property
																		value="TenSanPham"></s:property></a>
															</div>
														</div>
														<div class="product_extras">
														<!-- 	<div class="product_color">
																<input type="radio" checked name="product_color"
																	style="background: #b19c83"> <input
																	type="radio" name="product_color"
																	style="background: #000000"> <input
																	type="radio" name="product_color"
																	style="background: #999999">
															</div> -->
															<a style="font-size:20px;" href="add_to_cart?newProductId=<s:property value="id"/>">Add to cart</a>
														</div>
													</div>
													<div class="product_fav">
														<i class="fas fa-heart"></i>
													</div>
													<ul class="product_marks">
														<li class="product_mark product_discount"></li>
														<li class="product_mark product_new">new</li>
													</ul>
												</div>
											</div>
										</s:iterator>
									</div>
									<div class="featured_slider_dots_cover"></div>
								</div>

							</div>
						</div>

					</div>
				</div>
			</div>
		</div>

		<!-- Popular Categories -->

		
		<!-- Banner -->

		
		<!-- Hot New Arrivals -->

		<div class="new_arrivals">
			<div class="container">
				<div class="row">
					<div class="col">
						<div class="tabbed_container">
							<div class="tabs clearfix tabs-right">
								<div class="new_arrivals_title">Hot New Arrivals</div>
								<ul class="clearfix">
									<li class="active">Featured</li>
									<li>Audio & Video</li>
									<li>Laptops & Computers</li>
								</ul>
								<div class="tabs_line">
									<span></span>
								</div>
							</div>
							<div class="row">
								<div class="col-lg-9" style="z-index: 1;">

									<!-- Product Panel -->
									<div class="product_panel panel active">
										<div class="arrivals_slider slider">
											<s:iterator value="lstSanPham">
												<!-- Slider Item -->
												<div class="arrivals_slider_item">
													<div class="border_active"></div>
													<div
														class="product_item is_new d-flex flex-column align-items-center justify-content-center text-center">
														<div
															class="product_image d-flex flex-column align-items-center justify-content-center">
															<img src="sources/images/new_1.jpg" alt="">
														</div>
														<div class="product_content">
															<div class="product_price">
																$
																<s:property value="GiaBan"></s:property>
															</div>
															<div class="product_name">
																<div>
																	<a style="font-size:15px;" href="view_product?getProductId=<s:property value="id"/>"><s:property
																			value="TenSanPham"/></a>
																</div>
															</div>
															<div class="product_extras">
																<!-- <div class="product_color">
																	<input type="radio" checked name="product_color"
																		style="background: #b19c83"> <input
																		type="radio" name="product_color"
																		style="background: #000000"> <input
																		type="radio" name="product_color"
																		style="background: #999999">
																</div> -->
																<a style="font-size:20px;" href="add_to_cart?newProductId=<s:property value="id"/>">Add to cart</a>
																<%-- <br>
																<a style="font-size:20px;" href="view_product?getProductId=<s:property value="id"/>">View Product</a> --%>
															</div>
														</div>
														<div class="product_fav">
															<i class="fas fa-heart"></i>
														</div>
														<ul class="product_marks">
															<li class="product_mark product_discount">-25%</li>
															<li class="product_mark product_new">new</li>
														</ul>
													</div>
												</div>
											</s:iterator>
										</div>
										<div class="arrivals_slider_dots_cover"></div>
									</div>

									<!-- Product Panel -->
									<div class="product_panel panel">
										<div class="arrivals_slider slider">
											<s:iterator value="lstSanPham">
												<!-- Slider Item -->
												<div class="arrivals_slider_item">
													<div class="border_active"></div>
													<div
														class="product_item is_new d-flex flex-column align-items-center justify-content-center text-center">
														<div
															class="product_image d-flex flex-column align-items-center justify-content-center">
															<img src="sources/images/new_1.jpg" alt="">
														</div>
														<div class="product_content">
															<div class="product_price">
																$
																<s:property value="GiaBan"></s:property>
															</div>
															<div class="product_name">
																<div>
																	<a style="font-size:15px;" href="view_product?getProductId=<s:property value="id"/>"><s:property
																			value="TenSanPham"/></a>
																</div>
															</div>
															<div class="product_extras">
															<!-- 	<div class="product_color">
																	<input type="radio" checked name="product_color"
																		style="background: #b19c83"> <input
																		type="radio" name="product_color"
																		style="background: #000000"> <input
																		type="radio" name="product_color"
																		style="background: #999999">
																</div> -->
																
															</div>
														</div>
														<div class="product_fav">
															<i class="fas fa-heart"></i>
														</div>
														<ul class="product_marks">
															<li class="product_mark product_discount">-25%</li>
															<li class="product_mark product_new">new</li>
														</ul>
													</div>
												</div>
											</s:iterator>
										</div>
										<div class="arrivals_slider_dots_cover"></div>
									</div>

									<!-- Product Panel -->
									<div class="product_panel panel">
										<div class="arrivals_slider slider">
											<s:iterator value="lstSanPham">
												<!-- Slider Item -->
												<div class="arrivals_slider_item">
													<div class="border_active"></div>
													<div
														class="product_item is_new d-flex flex-column align-items-center justify-content-center text-center">
														<div
															class="product_image d-flex flex-column align-items-center justify-content-center">
															<img src="sources/images/new_1.jpg" alt="">
														</div>
														<div class="product_content">
															<div class="product_price">
																$
																<s:property value="GiaBan"></s:property>
															</div>
															<div class="product_name">
																<div>
																	<%-- <a href="product.html"><s:property
																			value="TenSanPham"></s:property></a> --%>
																	<a style="font-size:20px;" href="view_product?getProductId=<s:property value="id"/>"><s:property
																			value="TenSanPham"/></a>
																</div>
															</div>
															<div class="product_extras">
																<!-- <div class="product_color">
																	<input type="radio" checked name="product_color"
																		style="background: #b19c83"> <input
																		type="radio" name="product_color"
																		style="background: #000000"> <input
																		type="radio" name="product_color"
																		style="background: #999999">
																</div> -->
																<a style="font-size:20px;" href="add_to_cart?newProductId=<s:property value="id"/>">Add to cart</a>
															</div>
														</div>
														<div class="product_fav">
															<i class="fas fa-heart"></i>
														</div>
														<ul class="product_marks">
															<li class="product_mark product_discount">-25%</li>
															<li class="product_mark product_new">new</li>
														</ul>
													</div>
												</div>
											</s:iterator>
										</div>
										<div class="arrivals_slider_dots_cover"></div>
									</div>

								</div>

								<div class="col-lg-3">
									<div class="arrivals_single clearfix">
										<div
											class="d-flex flex-column align-items-center justify-content-center">
											<div class="arrivals_single_image">
												<img src="sources/images/new_single.png" alt="">
											</div>
											<div class="arrivals_single_content">
												<div class="arrivals_single_category">
													<a href="#">Smartphones</a>
												</div>
												<div class="arrivals_single_name_container clearfix">
													<div class="arrivals_single_name">
														<a href="#">LUNA Smartphone</a>
													</div>
													<div class="arrivals_single_price text-right">$379</div>
												</div>
												<div class="rating_r rating_r_4 arrivals_single_rating">
													<i></i><i></i><i></i><i></i><i></i>
												</div>
												<form action="#">
													<button class="arrivals_single_button">Add to Cart</button>
												</form>
											</div>
											<div class="arrivals_single_fav product_fav active">
												<i class="fas fa-heart"></i>
											</div>
											<ul class="arrivals_single_marks product_marks">
												<li class="arrivals_single_mark product_mark product_new">new</li>
											</ul>
										</div>
									</div>
								</div>

							</div>

						</div>
					</div>
				</div>
			</div>
		</div>

		<!-- Best Sellers -->

		<div class="best_sellers">
			<div class="container">
				<div class="row">
					<div class="col">
						<div class="tabbed_container">
							<div class="tabs clearfix tabs-right">
								<div class="new_arrivals_title">Hot Best Sellers</div>
								<ul class="clearfix">
									<li class="active">Top 20</li>
									<li>Audio & Video</li>
									<li>Laptops & Computers</li>
								</ul>
								<div class="tabs_line">
									<span></span>
								</div>
							</div>

							<div class="bestsellers_panel panel active">

								<!-- Best Sellers Slider -->

								<div class="bestsellers_slider slider">
									<s:iterator value="lstSanPhamKhuyenMai">
										<!-- Best Sellers Item -->
										<div class="bestsellers_item discount">
											<div
												class="bestsellers_item_container d-flex flex-row align-items-center justify-content-start">
												<div class="bestsellers_image">
													<img src="sources/images/best_1.png" alt="">
												</div>
												<div class="bestsellers_content">
													<div class="bestsellers_category">
														<a href="#"><s:property value="TenLoaiSanPham"></s:property></a>
													</div>
													<div class="bestsellers_name">
														<a style="font-size:15px;" href="view_product?getProductId=<s:property value="id"/>"><s:property
																			value="TenSanPham"/></a>
													</div>
													<div class="rating_r rating_r_4 bestsellers_rating">
														<i></i><i></i><i></i><i></i><i></i>
													</div>
													<div class="bestsellers_price discount">
														$
														<s:property value="GiaBanMoi"></s:property>
														<span>$<s:property value="GiaBan"></s:property></span>
													</div>
												</div>
											</div>
											<div class="bestsellers_fav active">
												<i class="fas fa-heart"></i>
											</div>
											<ul class="bestsellers_marks">
												<li class="bestsellers_mark bestsellers_discount">-25%</li>
												<li class="bestsellers_mark bestsellers_new">new</li>
											</ul>
										</div>
									</s:iterator>
								</div>
							</div>

							<div class="bestsellers_panel panel">

								<!-- Best Sellers Slider -->

								<div class="bestsellers_slider slider">
									<s:iterator value="lstSanPhamKhuyenMai">
										<!-- Best Sellers Item -->
										<div class="bestsellers_item discount">
											<div
												class="bestsellers_item_container d-flex flex-row align-items-center justify-content-start">
												<div class="bestsellers_image">
													<img src="sources/images/best_1.png" alt="">
												</div>
												<div class="bestsellers_content">
													<div class="bestsellers_category">
														<a href="#"><s:property value="TenLoaiSanPham"></s:property></a>
													</div>
													<div class="bestsellers_name">
														<a style="font-size:15px;" href="view_product?getProductId=<s:property value="id"/>"><s:property
																			value="TenSanPham"/></a>
													</div>
													<div class="rating_r rating_r_4 bestsellers_rating">
														<i></i><i></i><i></i><i></i><i></i>
													</div>
													<div class="bestsellers_price discount">
														$
														<s:property value="GiaBanMoi"></s:property>
														<span>$<s:property value="GiaBan"></s:property></span>
													</div>
												</div>
											</div>
											<div class="bestsellers_fav active">
												<i class="fas fa-heart"></i>
											</div>
											<ul class="bestsellers_marks">
												<li class="bestsellers_mark bestsellers_discount">-25%</li>
												<li class="bestsellers_mark bestsellers_new">new</li>
											</ul>
										</div>
									</s:iterator>

								</div>
							</div>

							<div class="bestsellers_panel panel">

								<!-- Best Sellers Slider -->

								<div class="bestsellers_slider slider">
									<s:iterator value="lstSanPhamKhuyenMai">
										<!-- Best Sellers Item -->
										<div class="bestsellers_item discount">
											<div
												class="bestsellers_item_container d-flex flex-row align-items-center justify-content-start">
												<div class="bestsellers_image">
													<img src="sources/images/best_1.png" alt="">
												</div>
												<div class="bestsellers_content">
													<div class="bestsellers_category">
														<a href="#"><s:property value="TenLoaiSanPham"></s:property></a>
													</div>
													<div class="bestsellers_name">
														<a style="font-size:15px;" href="view_product?getProductId=<s:property value="id"/>"><s:property
																			value="TenSanPham"/></a>
													</div>
													<div class="rating_r rating_r_4 bestsellers_rating">
														<i></i><i></i><i></i><i></i><i></i>
													</div>
													<div class="bestsellers_price discount">
														$
														<s:property value="GiaBanMoi"></s:property>
														<span>$<s:property value="GiaBan"></s:property></span>
													</div>
												</div>
											</div>
											<div class="bestsellers_fav active">
												<i class="fas fa-heart"></i>
											</div>
											<ul class="bestsellers_marks">
												<li class="bestsellers_mark bestsellers_discount">-25%</li>
												<li class="bestsellers_mark bestsellers_new">new</li>
											</ul>
										</div>
									</s:iterator>

								</div>
							</div>
						</div>

					</div>
				</div>
			</div>
		</div>


		
		<!-- Brands -->

		<div class="brands">
			<div class="container">
				<div class="row">
					<div class="col">
						<div class="brands_slider_container">

							<!-- Brands Slider -->

							<div class="owl-carousel owl-theme brands_slider">

								<div class="owl-item">
									<div
										class="brands_item d-flex flex-column justify-content-center">
										<img src="sources/images/brands_1.jpg" alt="">
									</div>
								</div>
								<div class="owl-item">
									<div
										class="brands_item d-flex flex-column justify-content-center">
										<img src="sources/images/brands_2.jpg" alt="">
									</div>
								</div>
								<div class="owl-item">
									<div
										class="brands_item d-flex flex-column justify-content-center">
										<img src="sources/images/brands_3.jpg" alt="">
									</div>
								</div>
								<div class="owl-item">
									<div
										class="brands_item d-flex flex-column justify-content-center">
										<img src="sources/images/brands_4.jpg" alt="">
									</div>
								</div>
								<div class="owl-item">
									<div
										class="brands_item d-flex flex-column justify-content-center">
										<img src="sources/images/brands_5.jpg" alt="">
									</div>
								</div>
								<div class="owl-item">
									<div
										class="brands_item d-flex flex-column justify-content-center">
										<img src="sources/images/brands_6.jpg" alt="">
									</div>
								</div>
								<div class="owl-item">
									<div
										class="brands_item d-flex flex-column justify-content-center">
										<img src="sources/images/brands_7.jpg" alt="">
									</div>
								</div>
								<div class="owl-item">
									<div
										class="brands_item d-flex flex-column justify-content-center">
										<img src="sources/images/brands_8.jpg" alt="">
									</div>
								</div>

							</div>

							<!-- Brands Slider Navigation -->
							<div class="brands_nav brands_prev">
								<i class="fas fa-chevron-left"></i>
							</div>
							<div class="brands_nav brands_next">
								<i class="fas fa-chevron-right"></i>
							</div>

						</div>
					</div>
				</div>
			</div>
		</div>

		<!-- Newsletter -->

		
		<jsp:include page="elements/footer.jsp"></jsp:include>
	</div>
</body>

</html>