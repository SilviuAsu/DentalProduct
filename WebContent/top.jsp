<%@ page import="Entitati.Produse"%>
<%@ page import="Controllere.ProduseController"%>
<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <!-- The above 3 meta tags *must* come first in the head; any other head content must come *after* these tags -->
    <meta name="description" content="">
    <meta name="author" content="">

    <title>Dental Price</title>
	<link rel="icon" type="image/png" href="images/dentist.png">

    <!-- Bootstrap core CSS -->
    <link href="css/bootstrap.min.css" rel="stylesheet">
	<link href="css/main.css" rel="stylesheet">
	
  </head>

  <body>

<div class="container-fluid nopadding">
<div class="row">
    	<nav class="navbar navbar-inverse navbar-fixed-top">
    
        <!-- Brand and toggle get grouped for better mobile display -->
        <div class="navbar-header">
          <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1" aria-expanded="false">
            <span class="icon-bar"></span>
            <span class="icon-bar"></span>
            <span class="icon-bar"></span>
          </button>
          <a class="navbar-brand" href="index.jsp">Dental Price</a>
        </div>
    
        <!-- Collect the nav links, forms, and other content for toggling -->
        <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
          <ul class="nav navbar-nav">
            <li><a href="#">Despre Dental Price</a></li>
            <li><a href="contact.jsp">Contact</a></li>
            </ul>
					<form class="navbar-form navbar-right" action="GetProduct"
						method="GET" role="search">
						<div class="form-group">
							<input type="text" class="form-control" name="Search">
						</div>
						<button type="submit" class="btn btn-primary">Cauta</button>
					</form>
        </div>
    </nav>
    </div>
            <!-- /.navbar-collapse -->

    


    <div class="col-xs-12 col-sm-12 col-md-12 nopadding">
	<div id="myCarousel" class="carousel slide" data-ride="carousel">
    <!-- Indicators -->

    <div class="carousel-inner" role="listbox">
      <div class="item active">
        <img class="img-responsive" src="images/1.dental.png" alt="First slide">
        <div class="container">
          <div class="carousel-caption">
            <h1>Example headline.</h1>
            <br>
            <h4>www.BlazRobar.com</h4>
          </div>
        </div>
      </div>
      <div class="item">
        <img class="img-responsive" src="images/2.clean.png" alt="First slide">
        <div class="container">
          <div class="carousel-caption">
            <h1>Another example headline.</h1>
            <br>
            <h4>www.BlazRobar.com</h4>
          </div>
        </div>
      </div>
      <div class="item">
        <img class="img-responsive" src="images/3.instruments.png" alt="First slide">
        <div class="container">
          <div class="carousel-caption">
            <h1>Another example headline.</h1>
            <br>
            <h4>www.BlazRobar.com</h4>
          </div>
        </div>
      </div>
    </div>
    <a id="rightbutton2" class="right carousel-control" href="#myCarousel" role="button" data-slide="next">
      <span class="rightbutton2 glyphicon glyphicon-chevron-right" aria-hidden="true"></span>
    </a>
  </div>
  </div>


    <div class="col-md-12">
        <!-- Left menu -->
          <div class="navbar-left col-xs-12 col-sm-3 col-md-3 colormenu2">
          <ul class="nav nav-pills nav-stacked text-center">
					<%
						for (String s : ProduseController.getCategory()) {
					%>
					<li><a href="category.jsp?Category=<%=s%>"><%=s.split("-")[2]%></a></li>
					<%
						}
					%>
          </ul>
          </div>
          
 <!-- End of right menu glyphicon glyphicon-forward-->

<div class="container-fluid">
 <div class="col-xs-12 col-sm-offset-right-3 col-sm-9 col-md-offset-right-3 col-md-9 colormenu">
 <ul>
  <li><a class="active" href="products.jsp">Toate Produsele</a></li>
  <li><a href="top.jsp">Top 10</a></li>
</ul>
<div class="row text-center">
		<div class="col-xs-12 col-sm-12 col-md-12">
		<% for(Produse produs: ProduseController.getTopProducts())  { %>
			<div class="col-sm-9 productpadding">
				<img class="img-rounded pull-right" src="images/1.dental.png" alt="Image" title="Image" width="125" height="103" />
				<div class="text-center">
				<h3><a href="#"><%=produs.getName()%></a></h3>
				<h4><a href="#"><%=produs.getPrice()%></a></h4>
			</div>
			</div>
			  <%} %>
			
			</div>
			</div>
		</div>
	  </div>
  </div>
  </div>


      <section id="contact">
        <div class="container">
            <div class="row">
                <div class="col-lg-8 col-lg-offset-2 text-center">
                    <h2 class="section-heading">Let's Get In Touch!</h2>
                    <hr class="primary">
                    <p>Ready to start your next project with us? That's great! Give us a call or send us an email and we will get back to you as soon as possible!</p>
                </div>
                <div class="col-lg-4 col-lg-offset-2 text-center">
                    <i class="fa fa-phone fa-3x sr-contact"></i>
                    <p>0748546826</p>
                </div>
                <div class="col-lg-4 text-center">
                    <i class="fa fa-envelope-o fa-3x sr-contact"></i>
                    <p><a href="contact.jsp">feedback@dentalproducts.com</a></p>
                </div>
            </div>
        </div>
    </section>


    <!-- Bootstrap core JavaScript
    ================================================== -->
    <!-- Placed at the end of the document so the pages load faster -->
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
    <script src="js/bootstrap.min.js"></script>
    <!-- IE10 viewport hack for Surface/desktop Windows 8 bug -->
    <script src="js/ie10-viewport-bug-workaround.js"></script>
  </body>
</html>
