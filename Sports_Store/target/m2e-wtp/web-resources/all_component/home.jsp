<!-- Home Section Starting -->
<%@page import="com.DAO.ProductDAOImpl"%>

<%@page import="com.DB.DBConnect"%>

<%@page import="com.entity.Products"%>
<%@page import="java.util.*"%>

<section class="home" id="home">
	<div class="content">
		<h3>
			<span>Best</span> and <span>Quality</span> Sports Equipments for you
		</h3>
		<p>Lorem ipsum dolor sit, amet consectetur adipisicing elit.
			Libero illo debitis quam quae voluptatem soluta ipsa adipisci,
			aspernatur nihil explicabo.</p>
		<a href="#" class="btn1">shop now</a>
	</div>
</section>

<!-- Home Section ends -->

<!-- features section starts -->
<section class="features" id="features">
	<h1 class="heading">
		Our <span>Features</span>
	</h1>

	<div class="box-container">
		<div class="box">
			<img src="image/feature-img-1.png" alt="" />
			<h3>Branded Products</h3>
			<p>Lorem, ipsum dolor sit amet consectetur adipisicing elit.
				Reprehenderit vero blanditiis molestias facilis libero recusandae
				eum velit consequatur quidem aperiam!</p>
			<a href="#" class="btn">read more</a>
		</div>

		<div class="box">
			<img src="image/feature-img-2.png" alt="" />
			<h3>Fast Delivery</h3>
			<p>Lorem, ipsum dolor sit amet consectetur adipisicing elit.
				Reprehenderit vero blanditiis molestias facilis libero recusandae
				eum velit consequatur quidem aperiam!</p>
			<a href="#" class="btn">read more</a>
		</div>

		<div class="box">
			<img src="image/feature-img-3.png" alt="" />
			<h3>User Friendly</h3>
			<p>Lorem, ipsum dolor sit amet consectetur adipisicing elit.
				Reprehenderit vero blanditiis molestias facilis libero recusandae
				eum velit consequatur quidem aperiam!</p>
			<a href="#" class="btn">read more</a>
		</div>
	</div>
</section>
<!-- features section ends -->
<!-- Products Section Starts -->
<!-- Making Slider For Products Using Swiper -->
<section class="products" id="products">
	<h1 class="heading">
		Our<span>Products</span>
	</h1>

	<div class="swiper product-slider">
		<div class="swiper-wrapper">


			<%
        ProductDAOImpl dao=new ProductDAOImpl(DBConnect.getConn());
        List<Products>list=dao.getAllProducts();
        for (Products p:list){
        	%>
			<!-- Product-1 -->
			<div class="swiper-slide box">
				<img src="image/product-1.png" alt="" />
				<h3><%=p.getProduct_name() %></h3>
				<div class="price"><%=p.getUnit_price() %></div>
				<div class="stars">
					<i class="fas fa-star"></i> <i class="fas fa-star"></i> <i
						class="fas fa-star"></i> <i class="fas fa-star"></i> <i
						class="fas fa-star-half-alt"></i>
				</div>
				<a href="#" class="btn">Add to Cart</a>
			</div>
			<%
        }
        
        %>
		</div>
		</div>


			<!-- Products Section Ends -->
			<!-- Categories Section Starts -->

			<section class="categories" id="categories">
				<h1 class="heading">
					Sport<span> Categories</span>
				</h1>
				<div class="box-container">
					<!-- Product Category 1 -->
					<div class="box">
						<img src="image/cat-1.png" alt="" />
						<h3>Cricket</h3>
						<p>upto 35% off</p>
						<a href="#" class="btn">Shop Now</a>
					</div>
					<!-- Product Category 2 -->
					<div class="box">
						<img src="image/cat-2.png" alt="" />
						<h3>Football</h3>
						<p>upto 25% off</p>
						<a href="#" class="btn">Shop Now</a>
					</div>
					<!-- Product Category 3 -->
					<div class="box">
						<img src="image/cat-3.png" alt="" />
						<h3>Badminton</h3>
						<p>upto 50% off</p>
						<a href="#" class="btn">Shop Now</a>
					</div>
				</div>
			</section>

			<!-- Categories Section Ends -->

			<!-- Review Section Starts -->
			<section class="review" id="review">
				<h1 class="heading">
					Customers<span> Review's</span>
				</h1>
				<div class="box-container">
					<!-- review 1 -->
					<div class="box">
						<img src="image/pic-1.jpg" alt="" />
						<p>Lorem, ipsum dolor sit amet consectetur adipisicing elit.
							Corrupti sint aspernatur recusandae. Eum ipsa fugit voluptas esse
							quaerat maiores inventore!</p>
						<h3>Labron James</h3>
						<div class="stars">
							<i class="fas fa-star"></i> <i class="fas fa-star"></i> <i
								class="fas fa-star"></i> <i class="fas fa-star"></i> <i
								class="fas fa-star-half-alt"></i>
						</div>
					</div>
					<!-- review 2-->
					<div class="box">
						<img src="image/pic-2.webp" alt="" />
						<p>Lorem, ipsum dolor sit amet consectetur adipisicing elit.
							Corrupti sint aspernatur recusandae. Eum ipsa fugit voluptas esse
							quaerat maiores inventore!</p>
						<h3>Serena Williams</h3>
						<div class="stars">
							<i class="fas fa-star"></i> <i class="fas fa-star"></i> <i
								class="fas fa-star"></i> <i class="fas fa-star"></i> <i
								class="fas fa-star-half-alt"></i>
						</div>
					</div>
					<!-- review 3 -->
					<div class="box">
						<img src="image/pic-3.webp" alt="" />
						<p>Lorem, ipsum dolor sit amet consectetur adipisicing elit.
							Corrupti sint aspernatur recusandae. Eum ipsa fugit voluptas esse
							quaerat maiores inventore!</p>
						<h3>M.S Dhoni</h3>
						<div class="stars">
							<i class="fas fa-star"></i> <i class="fas fa-star"></i> <i
								class="fas fa-star"></i> <i class="fas fa-star"></i> <i
								class="fas fa-star-half-alt"></i>
						</div>
					</div>
	
			</section>
			<!-- Review Section Ends -->