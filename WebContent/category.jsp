<%@ page import="Entitati.Produse"%>
<%@ page import="Entitati.DBConnection"%>
<%@ page import="Controllere.ProduseController"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"%>
<%@ page import="java.sql.PreparedStatement"%>
<%@ page import="java.sql.ResultSet"%>
<%@ page import="java.sql.Connection"%>
<%@ page import="java.sql.DriverManager"%>
<%!public int Converter(String str) {
		int convrtr = 0;
		if (str == null) {
			str = "0";
		} else if ((str.trim()).equals("null")) {
			str = "0";
		} else if (str.equals("")) {
			str = "0";
		}
		try {
			convrtr = Integer.parseInt(str);
		} catch (Exception e) {
		}
		return convrtr;
	}%>
<%
DBConnection conn = new DBConnection();
Connection con = conn.getConnection();

	ResultSet rsPgin = null;
	ResultSet rsRwCn = null;
	PreparedStatement psPgintn=null;
	PreparedStatement psRwCn=null;
	
	// Number of records displayed on each page
	int iSwRws=14;  
	// Number of pages index displayed
	int iTotSrhRcrds=5; 
	
	int iTotRslts=Converter(request.getParameter("iTotRslts"));
	int iTotPags=Converter(request.getParameter("iTotPags"));
	int iPagNo=Converter(request.getParameter("iPagNo"));
	int cPagNo=Converter(request.getParameter("cPagNo"));

	int iStRsNo=0;
	int iEnRsNo=0;

	if(iPagNo==0)
    	{
			iPagNo=0;
    	}
	else{
			iPagNo=Math.abs((iPagNo-1)*iSwRws);
    	}
	
    String sqlPgintn="SELECT SQL_CALC_FOUND_ROWS * FROM produse WHERE Category like '%" + request.getParameter("Category") + "%' limit "+iPagNo+","+iSwRws+"";
	psPgintn=con.prepareStatement(sqlPgintn);
	rsPgin=psPgintn.executeQuery();
 	// Count total number of fetched rows
 	String sqlRwCnt="SELECT FOUND_ROWS() as cnt";
	psRwCn=con.prepareStatement(sqlRwCnt);
	rsRwCn=psRwCn.executeQuery();
	
	if(rsRwCn.next())
      {
		iTotRslts=rsRwCn.getInt("cnt");
      }
%>
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
          <form class="navbar-form navbar-right" action="GetProduct" method="GET" role="search">
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
				<% for(String s: ProduseController.getCategory())  { %>
					<li><a href="category.jsp?Category=<%=s%>"><%=s.split("-")[2] %></a></li>
					<%} %>
          </ul>
          </div>
          
 <!-- End of right menu glyphicon glyphicon-forward-->

<div class="container-fluid">
 <div class="col-xs-12 col-sm-offset-right-3 col-sm-9 col-md-offset-right-3 col-md-9">
 <div class="colormenu">
 <ul>
  <li><a class="active" href="products.jsp">Toate Produsele</a></li>
  <li><a href="top.jsp">Top 10</a></li>
</ul>
</div>                 
 	<form name="frm">
		<input type="hidden" name="iPagNo" value="<%=iPagNo%>">
		<input type="hidden" name="cPagNo" value="<%=cPagNo%>">
		<input type="hidden" name="iSwRws" value="<%=iSwRws%>">
		
		<table class="table table-hover table-inverse text-center" >
		<thead class="inlinemenu">
		<tr>
              <th class="widthCol text-center">Image</th>
              <th class="widthCol text-center">Website</th>
              <th class="widthCol text-center">Category</th>
              <th class="widthCol text-center">Name</th>
              <th class="widthCol text-center">Description</th>
              <th class="widthCol text-center">Price</th>
              <th class="widthCol text-center">Catre Site</th>
		</tr>
		</thead>
<%
	while(rsPgin.next())
	  {
	  %>
<tr>
			<td class="widthCol"><img src="<%=rsPgin.getString("ProductImage")%>" class="img-rounded pull-left" alt="Image" title="Image" width="125" height="103"></img></td>
			<td class="widthCol2"><%=rsPgin.getString("Website")%></td>
			<td class="widthCol2"><%=rsPgin.getString("Category")%></td>
			<td class="widthCol2"><%=rsPgin.getString("Name")%></td>
			<td class="widthCol2"><%=rsPgin.getString("Description")%></td>
			<td class="widthCol2"><%=rsPgin.getString("Price")%></td>
			<td class="widthCol2"><a href="<%=rsPgin.getString("link")%>" target="blank">Deschide</a></td>
		</tr>
<% 
 	 }
%>
<%
  	// Calculate next record start and end position 
	try{
		if(iTotRslts<(iPagNo+iSwRws))
            {
				iEnRsNo=iTotRslts;
            }
		else
            {
				iEnRsNo=(iPagNo+iSwRws);
            }

			iStRsNo=(iPagNo+1);
			iTotPags=((int)(Math.ceil((double)iTotRslts/iSwRws)));
       	}
	catch(Exception e)
        {
				e.printStackTrace();
        }
%>
</table>
</form>
<div class="row text-center">
<nav aria-label="...">
  <ul class="pagination">
<%
     // Create index of pages 
	int i=0;
	int cPge=0;
	if(iTotRslts!=0)
       {
		cPge=((int)(Math.ceil((double)iEnRsNo/(iTotSrhRcrds*iSwRws))));
		int prePageNo=(cPge*iTotSrhRcrds)-((iTotSrhRcrds-1)+iTotSrhRcrds);
		if((cPge*iTotSrhRcrds)-(iTotSrhRcrds)>0)
        	{
        %>
		<li class="page-item"><a href="index.jsp?iPagNo=<%=prePageNo%>&cPagNo=<%=prePageNo%>">Previous</a></li>
		<%
        }
		
		for(i=((cPge*iTotSrhRcrds)-(iTotSrhRcrds-1));i<=(cPge*iTotSrhRcrds);i++)
        {
			if(i==((iPagNo/iSwRws)+1))
          	{
          	%>
		<li class="page-item active"><a href="index.jsp?iPagNo=<%=i%>" style="cursor:pointer;color:red"><b><%=i%></b></a></li>
			<%
          	}
			else if(i<=iTotPags)
          	{
          	%>
		<li class="page-item"><a href="index.jsp?iPagNo=<%=i%>"><%=i%></a></li>
			<% 
          	}
        }
	
		if(iTotPags>iTotSrhRcrds&& i<iTotPags)
        {
         %>
		<li class="page-item"><a href="index.jsp?iPagNo=<%=i%>&cPagNo=<%=i%>">Next</a></li>

		<%
        }
      }
      %>
        </ul>
       
</nav>
 <b>Rows <%=iStRsNo%> - <%=iEnRsNo%>   Total Result  <%=iTotRslts%></b>	
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
<%
try{
	if(psPgintn!=null){
		psPgintn.close();
	}
	if(rsPgin!=null){
		rsPgin.close();
	}	
	if(psRwCn!=null){
		psRwCn.close();
	}
	if(rsRwCn!=null){
		rsRwCn.close();
	}
	if(con!=null){
		con.close();
	}
  }
catch(Exception e)
  {
	e.printStackTrace();
  }
%>