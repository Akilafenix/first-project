<html>
<body>
<head>
<meta charset="ISO-8859-1">
<title>welcome</title>
<style>
input[type=text]
p{
	text-align:center;
}
</style>

<link rel="stylesheet" href="views/land.css/" type="text/css"/>
<meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
</head>

<body>
<header>
<div>
<p></p><br>
</div>
<nav class="navbar navbar-inverse">
  <div class="container-fluid">
    <div class="navbar-header">
      <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#myNavbar">
        <span class="icon-bar"></span>
        <span class="icon-bar"></span>
        <span class="icon-bar"></span>                        
      </button>
      <img alt="logo" src="images/toyvault1.jpg/" width=100px height=70px>
    </div>
    <div class="collapse navbar-collapse" id="myNavbar">
      <ul class="nav navbar-nav">
        <li class="active"><a href="index"><span class="glyphicon glyphicon-home"></span>Home</a></li>
       <li class="dropdown">
          <a class="dropdown-toggle" data-toggle="dropdown" href="#">Product <span class="caret"></span></a>
          <ul class="dropdown-menu">
            <li><a href="#">Page 1-1</a></li>
            <li><a href="#">Page 1-2</a></li>
            <li><a href="#">Page 1-3</a></li>
          </ul>
        </li>  
             
        <li><a href="Admin"><span class="glyphicon glyphicon-user"></span>Admin</a></li>
        <li><a href="alluser"><span class="glyphicon glyphicon-user"></span>All User</a></li>
      </ul>
      <ul class="nav navbar-nav navbar-right">
        <li><a href="reg"><span class="glyphicon glyphicon-user"></span> Sign Up</a></li>
        <li><a href="login"><span class="glyphicon glyphicon-log-in"></span> Login</a></li>
        <li><a href="#"><span class="glyphicon glyphicon-shopping-cart"> Cart</span></a></li>
      </ul>
    </div>
  </div>
</nav>
</header>
  
<div class="container">
  <div id="myCarousel" class="carousel slide"  data-ride="carousel">
  <ol class="carousel-indicators">
    <li data-target="#myCarousel" data-slide-to="0" class="active"></li>
    <li data-target="#myCarousel" data-slide-to="1"></li>
    <li data-target="#myCarousel" data-slide-to="2"></li>
  </ol>
  <div class="carousel-inner">
    <div class="item active">
      <img src="images/toy11.jpg/" alt="Los Angeles">
    </div>
    <div class="item">
      <img src="images/toy2.jpg/" alt="Chicago" >
    </div>
    <div class="item">
      <img src="images/toy3.jpg/" alt="New York" >
    </div>
  </div>
  <a class="left carousel-control" href="#myCarousel" data-slide="prev">
    <span class="glyphicon glyphicon-chevron-left"></span>
    <span class="sr-only">Previous</span>
  </a>
  <a class="right carousel-control" href="#myCarousel" data-slide="next">
    <span class="glyphicon glyphicon-chevron-right"></span>
    <span class="sr-only">Next</span>
  </a>
</div>
<div class="container">
  <h2>Find your favourite toy!!!!!!</h2>
  <p></p><br>
  <div class="row">
    <div class="col-md-4">
      <div class="thumbnail">
        <a href="barbie.jpg" target="_blank">
          <img src="images/barbie.jpg/" alt="Lights"  style="width:100%">
          <div class="caption">
            <p>Barbie princess doll</p>
            <p>Rs:584
          </div>
        </a>
      </div>
    </div>
    <div class="col-md-4">
      <div class="thumbnail">
        <a href="car1.jpeg" target="_blank">
          <img src="images/car1.jpeg/" alt="Fjords"  style="width:100%">
          <div class="caption">
            <p>Cute beetless smart mini ride on</p>
            <p>Rs:1199
          </div>
        </a>
      </div>
    </div>
     <div class="col-md-4">
      <div class="thumbnail">
        <a href="frog.jpg" target="_blank">
          <img src="images/frog.jpg/" alt="Fjords" style="width:100%">
          <div class="caption">
            <p>Cally soft doll for girls</p>
            <p>Rs:476
          </div>
        </a>
      </div>
    </div>
    <div class="col-md-4">
      <div class="thumbnail">
        <a href="car.jpg" target="_blank">
          <img src="images/car.jpg/" alt="Nature" style="width:100%">
          <div class="caption">
            <p>Maisto builder zone crane orange</p>
            <p>Rs:600
          </div>
        </a>
      </div>
    </div>
    <div class="col-md-4">
      <div class="thumbnail">
        <a href="doll.jpg" target="_blank">
          <img src="images/doll.jpg/" alt="Fjords" style="width:100%">
          <div class="caption">
            <p>Cally soft doll for girls</p>
            <p>Rs:476
          </div>
        </a>
      </div>
    </div>
     <div class="col-md-4">
      <div class="thumbnail">
        <a href="talking tom.jpg" target="_blank">
          <img src="images/talking tom.jpg/" alt="Fjords"  style="width:100%">
          <div class="caption">
            <p>Battery talking tom toy</p>
            <p>Rs:358
          </div>
        </a>
      </div>
    </div>
  </div>
</div>
<br>
<br>
<br>
<br>
<br>
<br>
<br>
<br>
<footer>
<nav class="navbar navbar-default navbar-fixed-bottom">
  <div class="container-fluid">
    <div class="navbar-header">
		<a class="navbar-brand" href="#">© 2015,Toy vault, All rights reserved</a>
	</div>
    </div>
    <ul class="nav navbar-nav navbar-right">
        <li><a href="about"><span class="glyphicon glyphicon-info-sign"></span> About us</a></li>
        <li><a href="contact"><span class="glyphicon glyphicon-earphone"></span> Contact us</a></li>
      </ul>
  </div>
</nav>
</footer>
</body>
</html>
