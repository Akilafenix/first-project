<%@include file="/WEB-INF/views/footer.jsp" %>
<%@include file="/WEB-INF/views/header.jsp" %>


<html>   
<body>
<head>
<meta charset="ISO-8859-1">
<title>welcome</title>
<meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
</head>
<body>  

<div class="container">
  <div id="myCarousel" class="carousel slide"  data-ride="carousel">
  <ol class="carousel-indicators">
    <li data-target="#myCarousel" data-slide-to="0" class="active"></li>
    <li data-target="#myCarousel" data-slide-to="1"></li>
    <li data-target="#myCarousel" data-slide-to="2"></li>
  </ol>
  <div class="carousel-inner">
    <div class="item active">
      <img src="resources/toy11.jpg/" alt="Los Angeles">
    </div>
    <div class="item">
      <img src="resources/toy2.jpg/" alt="Chicago" >
    </div>
    <div class="item">
      <img src="resources/toy3.jpg/" alt="New York" >
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
</div>

<br>
<br>
<br>
<br>
</body>
</html>
