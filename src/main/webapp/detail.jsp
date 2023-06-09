
<%@page import="java.util.List"%>
<%@page import="java.util.ArrayList"%>
<%@page import="java.text.DecimalFormat"%>
<%@page import="com.classicdeli.connect.ClassicDeliDB"%>
<%@page import="com.classicdeli.dao.ProductDAO"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%
String cate_id = request.getParameter("category");
String title_header = request.getParameter("cate");
String pid = request.getParameter("pid");
Product detail = (Product) request.getSession().getAttribute("detail");
DecimalFormat df = new DecimalFormat("#,###.###");
String formattedPrice = df.format(detail.getPrice());
ArrayList<Cart> cartList = (ArrayList<Cart>) session.getAttribute("cart-list");
if (cartList != null) {
	request.setAttribute("cart_list", cartList);
}
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<link rel="stylesheet" href="./assets/css/reset.css">
<link rel="stylesheet" href="./assets/css/base.css">
<link rel="stylesheet" href="./assets/css/style.css">
<link rel="stylesheet"
	href="./assets/icon_font3/themify-icons-font/themify-icons/themify-icons.css">
<title>Classic Deli</title>
</head>
<body>
	<%@ include file="/includes/header.jsp"%>
	<!-- products page -->
	<div class="bread-wrapper">
		<a href="./mainpage.jsp">HOME</a>
		<p>/</p>
		<a href=""><%=detail.getpName()%></a>
	</div>
	<div class="product-session">
		<div class="product-content-1">
			<div class="detail-img">
				<img src="<%=detail.getImage()%>" alt="products-image">
			</div>
			<div class="detail-content">
				<div class="product-infor-detail">
					<h3><%=detail.getpName()%></h3>
					<div class="detail-about">
						<p class="price"><%=formattedPrice%>
							vnd
						</p>
					</div>
					<div class="detail-buy">
						<a
							href="add-to-cart?&id=<%=detail.getpId()%>">
							<button class="product-addToCart">Add To Cart</button>
						</a> <a href="buy-now?quantity=1&id=<%=detail.getpId()%>">
							<button class="product-buyNow">Buy Now</button>
						</a>
					</div>
				</div>
				<div class="anthemeblocks-reassurance">
					<ul>
						<li><div class="anthemeblocks-reassurance-item">
								<a href="#"><figure>
										<img
											src="assets/Img/block/block1.png";
											alt="Secure payment">
									</figure> <span>Secure payment</span> </a>
							</div></li>
						<li><div class="anthemeblocks-reassurance-item">
								<a href="#"><figure>
										<img
											src="assets/Img/block/block2.png"
											alt="High quality products">
									</figure> <span>High quality products</span> </a>
							</div></li>
						<li><div class="anthemeblocks-reassurance-item">
								<a href="#"><figure>
										<img
											src="assets/Img/block/block3.png"
											alt="Express shipping">
									</figure> <span>Express shipping</span> </a>
							</div></li>
					</ul>
				</div>
			</div>
		</div>
	</div>
	<%@ include file="/includes/footer.jsp"%>
	<script src="./assets/JS/main.js"></script>
</body>
</html>
