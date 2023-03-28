<head>
<script src="all_component/script.js"></script>
</head>
 <!-- header section starts-->

    <header class="header">
      <a href="#" class="logo">SportsBox</a>

      <nav class="navbar">
        <a href="#home">Home</a>
        <a href="#features">Features</a>
        <a href="#products">Products</a>
        <a href="#categories">Categories</a>
        <a href="#review">Review</a>
      </nav>

      <!-- Adding Icons For Navigation -->

      <div class="icons">
        <div class="fas fa-bars" id="menu-btn"></div>
        <div class="fas fa-search" id="search-btn"></div>
        <div class="fas fa-shopping-cart" id="search-btn"></div>
        <div class="fas fa-user" id="login-btn"></div>
      </div>

      <!-- Adding Search Bar -->
      <form action="" class="search-form">
        <input type="search" id="search-box" placeholder="search here...." />
        <label for="search-box" class="fas fa-search"></label>
      </form>

      <!-- Making Login Form -->
      <form action="" class="login-form">
        <h3>login now</h3>
        <input type="email" placeholder="your email" class="box" />
        <input type="password" placeholder="you password" class="box" />
        <p>forget your password <a href="#">click here</a></p>
        <p>don't have an account <a href="register.jsp">Sign Up</a></p>
        <input type="submit" value="login now" class="btn" />
      </form>
    </header>
    <!-- header section ends-->