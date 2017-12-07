<%-- 
    Document   : index
    Created on : 13/05/2017, 01:36:10 PM
    Author     : Jean Pierre
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
	<meta charset="UTF-8">
	<meta name="viewport" content="width=device-width, user-scalable=no, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0">
	<link rel="stylesheet" href="css/bootstrap.min.css">
	<link rel="stylesheet" href="css/style.css">
	<title>Campiña II - Inicio</title>
</head>
<body>
	
	
	<%-- Menu --%>
        <%@include file="menu.jsp" %>

	<section class="main container">
		<div class="row">
			<section class="posts col-md-9">
				<div class="miga-de-pan">
					<ol class="breadcrumb">
						<li><a href="#">Inicio</a></li>
						<li><a href="#">Inicio</a></li>
						<li class="active">Inicio</li>
					</ol>
				</div>
				<article class="post clearfix">
					<a href="#" class="thumb pull-left">
						<img class="img-thumbnail" src="images/imagen.png" alt="">
					</a>
					<h2 class="post-title">Anuncio</h2>
					<p><span class="post-fecha">11 de Mayo de 2017</span> por 
					<span class="post-autor">202 B</span></p>
					<p class="post-contenido text-justify">
						asdasdasdasdasdasdasdadasdasdasdasdasdasdasd
						aasdasdasdasdasdasdasdasdasd
						asdasdasdasdasdasdasdasdasdasdasdasd 
						asdasdasdasdasdasdasdadasdasdasdasdasdasdasd
						aasdasdasdasdasdasdasdasdasd
						asdasdasdasdasdasdasdasdasdasdasdasd
						asdasdasdasdasdasdasdadasdasdasdasdasdasdasd
						aasdasdasdasdasdasdasdasdasd
						asdasdasdasdasdasdasdasdasdasdasdasd
						asdasdasdasdasdasdasdadasdasdasdasdasdasdasd
						aasdasdasdasdasdasdasdasdasd
						asdasdasdasdasdasdasdasdasdasdasdasd
						asdasdasdasdasdasdasdadasdasdasdasdasdasdasd
						aasdasdasdasdasdasdasdasdasd
						asdasdasdasdasdasdasdasdasdasdasdasd
						asdasdasdasdasdasdasdadasdasdasdasdasdasdasd
						aasdasdasdasdasdasdasdasdasd
						asdasdasdasdasdasdasdasdasdasdasdasd
						asdasdasdasdasdasdasdadasdasdasdasdasdasdasd
						aasdasdasdasdasdasdasdasdasd
						asdasdasdasdasdasdasdasdasdasdasdasd
						asdasdasdasdasdasdasdadasdasdasdasdasdasdasd
						aasdasdasdasdasdasdasdasdasd
						asdasdasdasdasdasdasdasdasdasdasdasd

					</p>
				</article>
				<nav>
					<div class="center-block">
						<ul class="pagination">
							<li class="disabled"><a href="#">&laquo;<span class="sr-only">Anterior</span></a></li>
							
							<li class="active"><a href="#">1</a></li>
							<li><a href="#">2</a></li>
							<li><a href="#">3</a></li>
							<li><a href="#">4</a></li>
							<li><a href="#">5</a></li>

							<li><a href="#">&raquo; <span class="sr-only">Siguiente</span></a></li>
						</ul>
					</div>
				</nav>
			</section>
			<aside class="col-md-3 hidden-xs hidden-sm">
				<h4>Categorias</h4>
				<div class="list-group">
					<a href="#" class="list-group-item active">Noticias</a>
					<a href="#" class="list-group-item">Publicaciones</a>
					<a href="#" class="list-group-item">Noticias</a>
				</div>
			</aside>
		</div>
	</section>
		


	 <%-- Footer --%>
        <%@include file="footer.jsp" %>
        
	<script src="js/jquery.js"></script>
    <script src="js/bootstrap.min.js"></script>
</body>
</html>
