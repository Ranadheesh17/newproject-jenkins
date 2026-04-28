<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">

<title>NexusShop Pro</title>

<link href="https://fonts.googleapis.com/css2?family=Poppins:wght@400;600;700&display=swap" rel="stylesheet">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.0/css/all.min.css">

<style>
:root{
  --primary:#6C63FF;
  --dark:#0f172a;
  --bg:#f1f5f9;
  --card:rgba(255,255,255,0.6);
}

*{margin:0;padding:0;box-sizing:border-box;}

body{
  font-family:Poppins,sans-serif;
  background:linear-gradient(135deg,#eef2ff,#e0f2fe);
  color:var(--dark);
}

/* HEADER */
header{
  position:sticky;
  top:0;
  backdrop-filter:blur(10px);
  background:rgba(255,255,255,0.6);
  border-bottom:1px solid #ddd;
  z-index:10;
}

.container{
  max-width:1200px;
  margin:auto;
  padding:15px;
}

.header{
  display:flex;
  justify-content:space-between;
  align-items:center;
}

.logo{
  font-size:22px;
  font-weight:700;
}

.logo span{color:var(--primary);}

nav{
  display:flex;
  gap:20px;
}

nav a{
  text-decoration:none;
  color:#333;
  font-weight:500;
}

nav a:hover{
  color:var(--primary);
}

/* HERO */
.hero{
  height:70vh;
  display:flex;
  align-items:center;
  justify-content:center;
  text-align:center;
  color:white;
  background:linear-gradient(120deg,#6366f1,#06b6d4);
}

.hero h1{
  font-size:42px;
}

.hero p{
  margin:15px 0;
}

.btn{
  padding:12px 20px;
  border:none;
  border-radius:25px;
  background:white;
  color:#333;
  cursor:pointer;
  font-weight:600;
  transition:.3s;
}

.btn:hover{
  transform:scale(1.05);
}

/* GRID */
.grid{
  display:grid;
  gap:20px;
}

.products{
  grid-template-columns:repeat(auto-fit,minmax(250px,1fr));
}

/* CARD */
.card{
  background:var(--card);
  backdrop-filter:blur(12px);
  border-radius:15px;
  overflow:hidden;
  transition:.3s;
}

.card:hover{
  transform:translateY(-8px);
}

.card img{
  width:100%;
  height:200px;
  object-fit:cover;
}

.card-body{
  padding:15px;
}

.price{
  font-weight:700;
  color:var(--primary);
}

.btn-add{
  width:100%;
  margin-top:10px;
  padding:10px;
  border:none;
  background:var(--primary);
  color:white;
  border-radius:10px;
  cursor:pointer;
}

/* FOOTER */
footer{
  text-align:center;
  padding:30px;
  margin-top:40px;
  background:#111;
  color:white;
}
</style>
</head>

<body>

<header>
  <div class="container header">
    <div class="logo">Nexus<span>Shop</span></div>
    <nav>
      <a href="#">Home</a>
      <a href="#">Products</a>
      <a href="#">Deals</a>
      <a href="#">Contact</a>
    </nav>
  </div>
</header>

<section class="hero">
  <div>
    <h1>Premium Shopping Experience</h1>
    <p>Modern products curated just for you</p>
    <button class="btn">Shop Now</button>
  </div>
</section>

<section class="container" style="margin-top:40px;">
  <h2 style="text-align:center;margin-bottom:20px;">Trending Products</h2>

  <div class="grid products" id="products"></div>
</section>

<footer>
  © 2026 NexusShop — Modern UI Upgrade
</footer>

<script>
const products=[
  {name:"iPhone 14 Pro",price:999,img:"https://images.unsplash.com/photo-1601784551446-20c9e07cdbdb"},
  {name:"MacBook Pro",price:1999,img:"https://images.unsplash.com/photo-1593642632823"},
  {name:"Headphones",price:299,img:"https://images.unsplash.com/photo-1600185365483"},
  {name:"Sneakers",price:150,img:"https://images.unsplash.com/photo-1542272604"}
];

const container=document.getElementById("products");

products.forEach(p=>{
  container.innerHTML+=`
  <div class="card">
    <img src="${p.img}">
    <div class="card-body">
      <h4>${p.name}</h4>
      <div class="price">$${p.price}</div>
      <button class="btn-add">Add to Cart</button>
    </div>
  </div>
  `;
});
</script>

</body>
</html>
