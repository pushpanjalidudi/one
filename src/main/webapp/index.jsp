<!doctype html>
<html lang="en">
<head>
  <meta charset="utf-8" />
  <meta name="viewport" content="width=device-width, initial-scale=1" />
  <title>NexusShop · modern e‑commerce</title>
  <!-- Fonts & Icons -->
  <link href="https://fonts.googleapis.com/css2?family=Inter:opsz,wght@14..32,400;14..32,500;14..32,600&family=Poppins:wght@600;700&display=swap" rel="stylesheet">
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.0/css/all.min.css">
  <style>
    * { box-sizing: border-box; margin: 0; }
    body {
      font-family: 'Inter', system-ui, -apple-system, sans-serif;
      background: #fafcff;
      color: #0b1c2f;
      line-height: 1.5;
      padding: 0 16px;
    }
    :root {
      --primary: #0b1c2f;
      --accent: #2a7de1;
      --bg-soft: #f2f6fe;
      --card: #ffffff;
      --radius: 20px;
      --shadow: 0 12px 30px rgba(0,20,50,0.06);
      --transition: 0.2s ease;
    }
    .container {
      max-width: 1280px;
      margin: 0 auto;
      padding: 0 12px:
    }
    /* header */
    header {
      background: rgba(255,255,255,0.7);
      backdrop-filter: blur(10px);
      -webkit-backdrop-filter: blur(10px);
      border-bottom: 1px solid rgba(0,0,0,0.02);
      position: sticky;
      top: 0;
      z-index: 50;
      padding: 12px 0;
    }
    .header-flex {
      display: flex;
      align-items: center;
      justify-content: space-between;
      gap: 16px;
      flex-wrap: wrap;
    }
    .brand {
      font-family: 'Poppins', sans-serif;
      font-weight: 700;
      font-size: 1.5rem;
      display: flex;
      align-items: center;
      gap: 6px;
    }
    .brand span { color: var(--accent); }
    .brand i { color: var(--accent); font-size: 1.4rem; }

    .nav-links {
      display: flex;
      gap: 6px;
      align-items: center;
      flex-wrap: wrap;
    }
    .nav-links a {
      padding: 8px 14px;
      border-radius: 40px;
      font-weight: 500;
      color: #1a2b3e;
      transition: var(--transition);
      display: inline-flex;
      align-items: center;
      gap: 8px;
      font-size: 0.95rem;
    }
    .nav-links a:hover { background: var(--bg-soft); color: var(--accent); }
    .search-wrap {
      display: flex;
      align-items: center;
      background: white;
      border: 1px solid #e6edf5;
      border-radius: 60px;
      padding: 6px 6px 6px 18px;
      min-width: 200px;
      box-shadow: 0 2px 6px rgba(0,0,0,0.01);
    }
    .search-wrap input {
      border: 0;
      background: transparent;
      outline: 0;
      width: 100%;
      font-size: 0.9rem;
      padding: 6px 0;
    }
    .search-wrap button {
      background: var(--accent);
      border: 0;
      color: white;
      padding: 8px 16px;
      border-radius: 60px;
      font-weight: 500;
      cursor: pointer;
      transition: var(--transition);
    }
    .search-wrap button:hover { opacity: 0.85; }
    .actions {
      display: flex;
      align-items: center;
      gap: 8px;
    }
    .actions .icon-btn {
      background: transparent;
      border: 0;
      font-size: 1.2rem;
      padding: 8px;
      border-radius: 40px;
      color: #1f3349;
      cursor: pointer;
      transition: var(--transition);
      position: relative;
    }
    .actions .icon-btn:hover { background: var(--bg-soft); }
    .cart-badge {
      background: var(--accent);
      color: white;
      font-size: 0.65rem;
      font-weight: 700;
      width: 20px;
      height: 20px;
      border-radius: 30px;
      display: inline-flex;
      align-items: center;
      justify-content: center;
      position: absolute;
      top: -2px;
      right: -4px;
    }
    .mobile-toggle {
      display: none;
      background: transparent;
      border: 0;
      font-size: 1.6rem;
      color: #0b1c2f;
      cursor: pointer;
    }
    /* hero */
    .hero {
      background: linear-gradient(145deg, #0f2740, #1b3b5c);
      border-radius: var(--radius);
      padding: 60px 40px;
      margin: 28px 0 40px;
      color: white;
      display: flex;
      flex-wrap: wrap;
      align-items: center;
      justify-content: space-between;
      box-shadow: 0 20px 40px -10px rgba(10,37,64,0.2);
    }
    .hero-content { max-width: 600px; }
    .hero h1 {
      font-family: 'Poppins', sans-serif;
      font-size: 2.6rem;
      line-height: 1.2;
      margin-bottom: 16px;
      letter-spacing: -0.02em;
    }
    .hero p { opacity: 0.85; margin-bottom: 24px; font-size: 1.05rem; }
    .btn-group { display: flex; gap: 12px; flex-wrap: wrap; }
    .btn {
      display: inline-flex;
      align-items: center;
      gap: 8px;
      padding: 12px 28px;
      border-radius: 60px;
      font-weight: 600;
      border: 0;
      cursor: pointer;
      transition: var(--transition);
    }
    .btn-primary {
      background: white;
      color: #0b1c2f;
    }
    .btn-primary:hover { background: #eef3fc; transform: scale(1.02); }
    .btn-outline {
      background: transparent;
      border: 2px solid rgba(255,255,255,0.2);
      color: white;
    }
    .btn-outline:hover { background: rgba(255,255,255,0.05); }
    .hero-image i { font-size: 4.5rem; opacity: 0.7; }
    /* section */
    .section { padding: 40px 0; }
    .section-header {
      display: flex;
      justify-content: space-between;
      align-items: baseline;
      flex-wrap: wrap;
      margin-bottom: 24px;
    }
    .section-header h2 {
      font-family: 'Poppins', sans-serif;
      font-size: 1.8rem;
    }
    .section-header .muted { color: #5b6f87; }
    /* categories grid */
    .grid-cat {
      display: grid;
      grid-template-columns: repeat(auto-fill, minmax(140px,1fr));
      gap: 16px;
    }
    .cat-card {
      background: white;
      border-radius: 24px;
      padding: 20px 12px;
      text-align: center;
      box-shadow: var(--shadow);
      transition: var(--transition);
      cursor: pointer;
      border: 1px solid transparent;
    }
    .cat-card:hover { transform: translateY(-6px); border-color: var(--accent); }
    .cat-card i { font-size: 2.2rem; color: var(--accent); margin-bottom: 8px; }
    .cat-card h4 { font-weight: 600; font-size: 1rem; }
    /* products grid */
    .grid-prod {
      display: grid;
      grid-template-columns: repeat(auto-fill, minmax(220px,1fr));
      gap: 24px;
    }
    .product-card {
      background: white;
      border-radius: 24px;
      overflow: hidden;
      box-shadow: var(--shadow);
      transition: var(--transition);
      display: flex;
      flex-direction: column;
    }
    .product-card:hover { transform: translateY(-6px); box-shadow: 0 20px 40px rgba(0,0,0,0.04); }
    .product-card img {
      width: 100%;
      height: 200px;
      object-fit: cover;
      background: #f0f4fe;
    }
    .product-body { padding: 16px 16px 12px; flex:1; }
    .product-body h5 { font-weight: 600; font-size: 1.05rem; margin-bottom: 4px; }
    .product-body .category { color: #5b6f87; font-size: 0.8rem; text-transform: uppercase; letter-spacing: 0.3px; }
    .price-row {
      display: flex;
      align-items: center;
      gap: 12px;
      margin: 8px 0 10px;
    }
    .price-current { font-weight: 700; font-size: 1.2rem; }
    .price-old { color: #8a9bb0; text-decoration: line-through; font-size: 0.9rem; }
    .rating { color: #f5b342; font-size: 0.85rem; display: flex; align-items: center; gap: 4px; }
    .product-footer {
      padding: 8px 16px 16px;
      display: flex;
      gap: 8px;
    }
    .add-btn {
      flex:1;
      background: var(--primary);
      color: white;
      border: 0;
      padding: 10px 0;
      border-radius: 40px;
      font-weight: 600;
      cursor: pointer;
      transition: var(--transition);
    }
    .add-btn:hover { background: var(--accent); }
    .wish-btn {
      background: #f2f6fe;
      border: 0;
      width: 44px;
      border-radius: 40px;
      cursor: pointer;
      transition: var(--transition);
    }
    .wish-btn:hover { background: #e0e9fc; }
    /* deal */
    .deal-card {
      background: white;
      border-radius: 28px;
      display: flex;
      flex-wrap: wrap;
      box-shadow: var(--shadow);
      overflow: hidden;
      margin: 12px 0 28px;
    }
    .deal-card img {
      width: 100%;
      max-width: 380px;
      height: 280px;
      object-fit: cover;
      background: #eef3fc;
    }
    .deal-content {
      flex:1;
      padding: 28px 32px;
      display: flex;
      flex-direction: column;
      justify-content: center;
    }
    .deal-content h3 { font-size: 1.8rem; font-family: 'Poppins', sans-serif; }
    .timer {
      display: flex;
      gap: 12px;
      margin: 16px 0;
    }
    .time-box {
      background: var(--primary);
      color: white;
      padding: 8px 14px;
      border-radius: 16px;
      text-align: center;
      min-width: 64px;
    }
    .time-box div:first-child { font-size: 1.5rem; font-weight: 700; }
    .time-box div:last-child { font-size: 0.65rem; opacity: 0.7; }
    .deal-price { font-size: 1.8rem; font-weight: 700; display: flex; align-items: center; gap: 12px; }
    .deal-price .old { font-size: 1rem; color: #8a9bb0; text-decoration: line-through; font-weight: 400; }
    .badge-discount { background: #e74c3c; color: white; padding: 4px 12px; border-radius: 40px; font-weight: 700; }
    /* testimonials */
    .testimonial-grid {
      display: grid;
      grid-template-columns: repeat(auto-fit, minmax(260px,1fr));
      gap: 20px;
    }
    .testimonial {
      background: white;
      padding: 24px;
      border-radius: 24px;
      box-shadow: var(--shadow);
    }
    .testimonial .stars { color: #f5b342; margin-bottom: 8px; }
    .testimonial p { font-size: 0.95rem; margin: 8px 0 12px; }
    .user { display: flex; align-items: center; gap: 12px; }
    .user img { width: 44px; height: 44px; border-radius: 60px; object-fit: cover; background: #dce3f0; }
    /* newsletter */
    .newsletter-box {
      background: var(--primary);
      border-radius: 32px;
      padding: 40px 36px;
      color: white;
      text-align: center;
    }
    .newsletter-box h3 { font-family: 'Poppins', sans-serif; font-size: 1.8rem; }
    .newsletter-box p { opacity: 0.8; margin-bottom: 18px; }
    .newsletter-form {
      display: flex;
      justify-content: center;
      gap: 8px;
      flex-wrap: wrap;
    }
    .newsletter-form input {
      padding: 14px 20px;
      border-radius: 60px;
      border: 0;
      min-width: 240px;
      font-size: 0.95rem;
    }
    .newsletter-form button {
      background: var(--accent);
      border: 0;
      padding: 14px 32px;
      border-radius: 60px;
      font-weight: 600;
      color: white;
      cursor: pointer;
    }
    /* footer */
    footer {
      margin-top: 40px;
      padding: 28px 0 16px;
      border-top: 1px solid #e6edf5;
      display: flex;
      flex-wrap: wrap;
      justify-content: space-between;
      align-items: flex-start;
      gap: 24px;
    }
    .footer-links { display: flex; gap: 40px; flex-wrap: wrap; }
    .footer-links div { font-weight: 500; }
    .footer-links div span { display: block; font-weight: 400; color: #5b6f87; margin-top: 4px; }
    /* responsive */
    @media (max-width: 820px) {
      .nav-links, .search-wrap { display: none; }
      .mobile-toggle { display: inline-block; }
      .hero { padding: 36px 24px; text-align: center; justify-content: center; }
      .hero h1 { font-size: 2rem; }
      .hero-image { display: none; }
      .deal-card img { max-width: 100%; height: 200px; }
    }
    @media (max-width: 540px) {
      .grid-prod { grid-template-columns: 1fr; }
      .grid-cat { grid-template-columns: repeat(2,1fr); }
      .deal-content { padding: 20px; }
    }
    /* mobile nav */
    .mobile-nav {
      display: none;
      background: white;
      padding: 12px 0 20px;
      border-top: 1px solid #e6edf5;
    }
    .mobile-nav a {
      display: block;
      padding: 10px 16px;
      font-weight: 500;
      border-radius: 12px;
    }
    .mobile-nav a:hover { background: var(--bg-soft); }
  </style>
</head>
<body>
<header>
  <div class="container header-flex">
    <div style="display:flex;align-items:center;gap:10px;">
      <button class="mobile-toggle" id="mobileToggle" aria-label="menu"><i class="fas fa-bars"></i></button>
      <div class="brand"><i class="fas fa-cube"></i> Nexus<span>Shop</span></div>
    </div>
    <nav class="nav-links">
      <a href="#"><i class="fas fa-home"></i> Home</a>
      <a href="#"><i class="fas fa-th-large"></i> Categories</a>
      <a href="#"><i class="fas fa-fire"></i> Trending</a>
      <a href="#deals"><i class="fas fa-tag"></i> Deals</a>
    </nav>
    <div style="display:flex;align-items:center;gap:12px;">
      <div class="search-wrap">
        <input type="text" id="searchInput" placeholder="Search...">
        <button id="searchBtn"><i class="fas fa-search"></i></button>
      </div>
      <div class="actions">
        <button class="icon-btn" aria-label="account"><i class="far fa-user"></i></button>
        <button class="icon-btn" aria-label="wishlist"><i class="far fa-heart"></i></button>
        <button class="icon-btn" id="cartBtn" aria-label="cart">
          <i class="fas fa-shopping-bag"></i>
          <span class="cart-badge" id="cartCount">0</span>
        </button>
      </div>
    </div>
  </div>
  <!-- mobile menu -->
  <div class="mobile-nav" id="mobileMenu">
    <div class="container">
      <a href="#"><i class="fas fa-home"></i> Home</a>
      <a href="#"><i class="fas fa-th-large"></i> Categories</a>
      <a href="#"><i class="fas fa-fire"></i> Trending</a>
      <a href="#deals"><i class="fas fa-tag"></i> Deals</a>
      <a href="#"><i class="fas fa-info-circle"></i> About</a>
    </div>
  </div>
</header>

<main class="container">
  <!-- hero -->
  <section class="hero">
    <div class="hero-content">
      <h1>Winter collection <br>premium picks</h1>
      <p>Discover the latest trends in fashion, tech & accessories. Free shipping on selected items.</p>
      <div class="btn-group">
        <button class="btn btn-primary" id="shopNow">Shop now <i class="fas fa-arrow-right"></i></button>
        <button class="btn btn-outline" id="exploreDeals">Explore deals</button>
      </div>
    </div>
    <div class="hero-image"><i class="fas fa-shopping-bag"></i></div>
  </section>

  <!-- categories -->
  <section class="section" aria-labelledby="cat-title">
    <div class="section-header">
      <h2 id="cat-title">Shop by category</h2>
      <span class="muted">Browse curated collections</span>
    </div>
    <div class="grid-cat" id="categoriesGrid"></div>
  </section>

  <!-- products -->
  <section class="section" aria-labelledby="prod-title">
    <div class="section-header">
      <h2 id="prod-title">Trending now</h2>
      <span class="muted">Popular picks</span>
    </div>
    <div class="grid-prod" id="productsGrid"></div>
  </section>

  <!-- deal -->
  <section id="deals" class="section">
    <div class="section-header">
      <h2>Flash sale</h2>
      <span class="muted">limited time</span>
    </div>
    <div class="deal-card">
      <img src="https://images.unsplash.com/photo-1517336714731-489689fd1ca8?auto=format&fit=crop&w=600&q=80" alt="MacBook Air M2">
      <div class="deal-content">
        <h3>MacBook Air M2</h3>
        <p style="color:#5b6f87;">Thin, light, powerful — now with M2.</p>
        <div class="timer">
          <div class="time-box"><div id="dealDays">0</div><div>Days</div></div>
          <div class="time-box"><div id="dealHours">00</div><div>Hours</div></div>
          <div class="time-box"><div id="dealMinutes">00</div><div>Min</div></div>
          <div class="time-box"><div id="dealSeconds">00</div><div>Sec</div></div>
        </div>
        <div class="deal-price">$999 <span class="old">$1,199</span> <span class="badge-discount">-17%</span></div>
        <p style="margin-top: 12px;"><strong>12</strong> items left at this price</p>
        <button class="btn btn-primary" id="buyDeal" style="background:var(--accent);color:white;margin-top:6px;"><i class="fas fa-bolt"></i> Buy now</button>
      </div>
    </div>
  </section>

  <!-- testimonials -->
  <section class="section">
    <div class="section-header">
      <h2>Customer stories</h2>
      <span class="muted">real reviews</span>
    </div>
    <div class="testimonial-grid" id="testimonialsGrid">
      <div class="testimonial">
        <div class="stars">★★★★★</div>
        <p>"Fast shipping and excellent support. Exceeded my expectations!"</p>
        <div class="user">
          <img src="https://images.unsplash.com/photo-1544005313-94ddf0286df2?auto=format&fit=crop&w=80&q=80" alt="Ava">
          <div><strong>Ava Martin</strong><div style="font-size:0.85rem;color:#5b6f87;">Verified buyer</div></div>
        </div>
      </div>
      <div class="testimonial">
        <div class="stars">★★★★☆</div>
        <p>"Great selection and smooth checkout. Will definitely shop again."</p>
        <div class="user">
          <img src="https://images.unsplash.com/photo-1546456073-6712f79251bb?auto=format&fit=crop&w=80&q=80" alt="Michael">
          <div><strong>Michael Lee</strong><div style="font-size:0.85rem;color:#5b6f87;">Frequent buyer</div></div>
        </div>
      </div>
    </div>
  </section>

  <!-- newsletter -->
  <section class="section">
    <div class="newsletter-box">
      <h3>Stay in the loop</h3>
      <p>Exclusive offers & new arrivals — straight to your inbox.</p>
      <form class="newsletter-form" id="newsletterForm" onsubmit="return false;">
        <input type="email" id="newsletterEmail" placeholder="Enter your email" required>
        <button id="subscribeBtn">Subscribe</button>
      </form>
      <div id="newsletterMsg" style="margin-top:14px;display:none;font-weight:500;"></div>
    </div>
  </section>
</main>

<footer class="container">
  <div>
    <div style="font-weight:700;font-size:1.2rem;"><i class="fas fa-cube" style="color:var(--accent);"></i> NexusShop</div>
    <div style="color:#5b6f87;margin-top:6px;">Modern e‑commerce demo</div>
    <div style="display:flex;gap:12px;margin-top:14px;">
      <a href="#" style="color:#1f3349;"><i class="fab fa-facebook"></i></a>
      <a href="#" style="color:#1f3349;"><i class="fab fa-twitter"></i></a>
      <a href="#" style="color:#1f3349;"><i class="fab fa-instagram"></i></a>
    </div>
  </div>
  <div class="footer-links">
    <div>Company <span>About · Careers · Press</span></div>
    <div>Support <span>Help · Shipping · Contact</span></div>
  </div>
  <div style="width:100%;text-align:center;color:#8a9bb0;font-size:0.85rem;margin-top:12px;">© <span id="year"></span> NexusShop. All rights reserved.</div>
</footer>

<script>
  // ---------- data ----------
  const CATEGORIES = [
    { id:'phones', name:'Smartphones', icon:'fa-mobile-alt' },
    { id:'laptops', name:'Laptops', icon:'fa-laptop' },
    { id:'clothing', name:'Clothing', icon:'fa-tshirt' },
    { id:'gadgets', name:'Gadgets', icon:'fa-headphones' },
    { id:'footwear', name:'Footwear', icon:'fa-shoe-prints' },
    { id:'accessories', name:'Accessories', icon:'fa-watch' }
  ];
  const PRODUCTS = [
    { id:1, title:'iPhone 14 Pro Max', price:1099, oldPrice:1199, rating:5, reviews:128, img:'https://images.unsplash.com/photo-1601784551446-20c9e07cdbdb?auto=format&fit=crop&w=400&q=80', category:'Smartphones' },
    { id:2, title:'MacBook Pro 14"', price:1999, oldPrice:0, rating:4, reviews:86, img:'https://images.unsplash.com/photo-1593642632823-8f785ba67e45?auto=format&fit=crop&w=400&q=80', category:'Laptops' },
    { id:3, title:'Apple Watch Series 8', price:349, oldPrice:399, rating:5, reviews:214, img:'https://images.unsplash.com/photo-1529374255404-311a2a4f1fd9?auto=format&fit=crop&w=400&q=80', category:'Accessories' },
    { id:4, title:'Nike Air Max 270', price:150, oldPrice:0, rating:4, reviews:53, img:'https://images.unsplash.com/photo-1542272604-787c3835535d?auto=format&fit=crop&w=400&q=80', category:'Footwear' },
    { id:5, title:'Sony A7 IV Camera', price:2499, oldPrice:0, rating:5, reviews:42, img:'https://images.unsplash.com/photo-1526170375885-4d8ecf77b99f?auto=format&fit=crop&w=400&q=80', category:'Gadgets' },
    { id:6, title:'Chanel No.5', price:120, oldPrice:0, rating:5, reviews:189, img:'https://images.unsplash.com/photo-1585386959984-a4155224a1ad?auto=format&fit=crop&w=400&q=80', category:'Accessories' },
    { id:7, title:'Travel Backpack', price:79, oldPrice:99, rating:4, reviews:67, img:'https://images.unsplash.com/photo-1551232864-3f0890e580d9?auto=format&fit=crop&w=400&q=80', category:'Accessories' },
    { id:8, title:'Sony WH-1000XM5', price:399, oldPrice:0, rating:5, reviews:156, img:'https://images.unsplash.com/photo-1600185365483-26d7a4cc7519?auto=format&fit=crop&w=400&q=80', category:'Gadgets' }
  ];

  let cartCount = 0;
  const cartCountEl = document.getElementById('cartCount');
  const searchInput = document.getElementById('searchInput');
  const productsGrid = document.getElementById('productsGrid');
  const categoriesGrid = document.getElementById('categoriesGrid');

  function renderCategories() {
    categoriesGrid.innerHTML = '';
    CATEGORIES.forEach(c => {
      const div = document.createElement('div');
      div.className = 'cat-card';
      div.innerHTML = `<i class="fas ${c.icon}"></i><h4>${c.name}</h4>`;
      div.addEventListener('click', ()=>{
        searchInput.value = c.name;
        filterProducts(c.name);
        document.getElementById('prod-title').scrollIntoView({ behavior:'smooth', block:'start' });
      });
      categoriesGrid.appendChild(div);
    });
  }

  function renderProducts(list) {
    productsGrid.innerHTML = '';
    list.forEach(p => {
      const card = document.createElement('div');
      card.className = 'product-card';
      const stars = '★'.repeat(Math.round(p.rating)) + '☆'.repeat(5 - Math.round(p.rating));
      card.innerHTML = `
        <img src="${p.img}" alt="${p.title}" loading="lazy">
        <div class="product-body">
          <h5>${p.title}</h5>
          <div class="category">${p.category}</div>
          <div class="price-row">
            <span class="price-current">$${p.price.toLocaleString()}</span>
            ${p.oldPrice ? `<span class="price-old">$${p.oldPrice.toLocaleString()}</span>` : ''}
          </div>
          <div class="rating">${stars} <span style="color:#5b6f87;font-size:0.8rem;">(${p.reviews})</span></div>
        </div>
        <div class="product-footer">
          <button class="add-btn" data-id="${p.id}"><i class="fas fa-plus"></i> Add</button>
          <button class="wish-btn"><i class="far fa-heart"></i></button>
        </div>
      `;
      productsGrid.appendChild(card);
    });
    document.querySelectorAll('.add-btn').forEach(btn => {
      btn.addEventListener('click', (e) => {
        const id = Number(btn.dataset.id);
        addToCart(id, btn);
      });
    });
  }

  function addToCart(id, btn) {
    const p = PRODUCTS.find(x => x.id === id);
    if (!p) return;
    cartCount++;
    cartCountEl.textContent = cartCount;
    if (btn) {
      const orig = btn.innerHTML;
      btn.innerHTML = '<i class="fas fa-check"></i> Added';
      btn.style.background = '#2a7de1';
      setTimeout(() => {
        btn.innerHTML = orig;
        btn.style.background = '';
      }, 1000);
    }
  }

  function filterProducts(q) {
    const query = String(q || '').trim().toLowerCase();
    if (!query) { renderProducts(PRODUCTS); return; }
    const filtered = PRODUCTS.filter(p => 
      p.title.toLowerCase().includes(query) || 
      p.category.toLowerCase().includes(query)
    );
    renderProducts(filtered);
  }

  // search
  document.getElementById('searchBtn').addEventListener('click', ()=> filterProducts(searchInput.value));
  searchInput.addEventListener('keydown', e => { if(e.key === 'Enter') filterProducts(e.target.value); });

  // mobile toggle
  document.getElementById('mobileToggle').addEventListener('click', ()=>{
    const menu = document.getElementById('mobileMenu');
    menu.style.display = menu.style.display === 'block' ? 'none' : 'block';
  });

  // deal timer
  (function() {
    const now = new Date();
    const target = new Date(now.getTime() + (24*60 + 36)*60*1000);
    function tick() {
      const diff = target - new Date();
      if (diff <= 0) return;
      const days = Math.floor(diff/(24*3600*1000));
      const hours = Math.floor((diff%(24*3600*1000))/(3600*1000));
      const mins = Math.floor((diff%(3600*1000))/(60*1000));
      const secs = Math.floor((diff%(60*1000))/1000);
      document.getElementById('dealDays').textContent = days;
      document.getElementById('dealHours').textContent = String(hours).padStart(2,'0');
      document.getElementById('dealMinutes').textContent = String(mins).padStart(2,'0');
      document.getElementById('dealSeconds').textContent = String(secs).padStart(2,'0');
    }
    tick();
    setInterval(tick, 1000);
  })();

  // newsletter
  document.getElementById('newsletterForm').addEventListener('submit', (e) => {
    e.preventDefault();
    const email = document.getElementById('newsletterEmail').value.trim();
    const msg = document.getElementById('newsletterMsg');
    if (!email || !email.includes('@')) {
      msg.style.display = 'block';
      msg.textContent = 'Please enter a valid email.';
      msg.style.color = '#ffb3b3';
      return;
    }
    msg.style.display = 'block';
    msg.textContent = '🎉 Thanks for subscribing!';
    msg.style.color = '#cce7ff';
    document.getElementById('newsletterEmail').value = '';
    setTimeout(() => msg.style.display = 'none', 3000);
  });

  // misc
  document.getElementById('shopNow').addEventListener('click', ()=> document.getElementById('prod-title').scrollIntoView({ behavior:'smooth' }));
  document.getElementById('exploreDeals').addEventListener('click', ()=> document.getElementById('deals').scrollIntoView({ behavior:'smooth' }));
  document.getElementById('buyDeal').addEventListener('click', ()=>{
    cartCount++;
    cartCountEl.textContent = cartCount;
    alert('Deal added to cart (demo).');
  });
  document.getElementById('year').textContent = new Date().getFullYear();

  // init
  renderCategories();
  renderProducts(PRODUCTS);
</script>
</body>
</html>
