<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>

<!DOCTYPE html>
<html>
	<head>
	<meta charset="UTF-8">
	<title>Login</title>
	<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
</head>
<body>
<div class="container">
<div class="container-fluid">
	<div class="row">
		<div class="col-md-12">
			<img alt="Bootstrap Image Preview" src="../img/logo.jpg" class="img-rounded" />
		</div>
	</div>
	<div class="row">
		<div class="col-md-3">
			<ul class="nav nav-stacked nav-pills">
				<li class="active">
					<a href="">Área restrita</a>
				</li>
				<li>
					<a href="/login">Clientes</a>
				</li>
				<li>
					<a href="/">Abrir Chamdo</a>
				</li>
				<li>
					<a href="/chamados">Buscar Chamados</a>
				</li>
				<li>
					<a href="/tecnicos">Técnicos</a>
				</li>												
				<!-- <li class="disabled">
					<a href="#">Messages</a>
				</li>
				<li class="dropdown pull-right">
					 <a href="#" data-toggle="dropdown" class="dropdown-toggle">Dropdown<strong class="caret"></strong></a>
					<ul class="dropdown-menu">
						<li>
							<a href="#">Action</a>
						</li>
						<li>
							<a href="#">Another action</a>
						</li>
						<li>
							<a href="#">Something else here</a>
						</li>
						<li class="divider">
						</li>
						<li>
							<a href="#">Separated link</a>
						</li>
					</ul>
				</li>-->
			</ul>
		</div>
		<div class="col-md-9">
			<form:form method="POST" action="/login" modelAttribute="usuario" class="form-signin">
				<div class="panel-heading">
					<h2 class="form-heading">Login</h2>
				</div>
				<div class="form-group ${error != null ? 'has-error' : ''}">
					<c:if test="${not empty msg}">
						<div class="alert alert-danger alert-dismissible" role="alert">
							<button type="button" class="close" data-dismiss="alert"
								aria-label="Close">
								<span aria-hidden="true">&times;</span>
							</button>
							<strong>ERRO!</strong> ${msg}
	
						</div>
					</c:if>
				
					<div class="form-group">
						<label for="username">Usuário</label>
						<input name="username" class="form-control" id="username" type="text" />
					</div>
					
					<div class="form-group">
						<label for="senha">Senha</label>
						<input type="password" class="form-control" id="senha" name="senha" />
					</div>
						<c:if test="${not empty error}">
							<div class="alert alert-danger alert-dismissible" role="alert">
								<button type="button" class="close" data-dismiss="alert"
									aria-label="Close">
									<span aria-hidden="true">&times;</span>
								</button>
								<p> ${error}</p>
		
							</div>
						</c:if>
					
					 
					<div class="form-group">
						<div class="checkbox">
							<label>
								<input type="checkbox" /> Remember me
							</label>
						</div>
					</div> 
					
					<button type="submit" class="btn btn-primary pull-left">Login</button>
						<a href="/cadastrar">
					<button type="button" class="btn btn-default pull-right"> Cadastrar-se </button></a>			
				</div>
			</form:form>
		</div>
	</div>
	<div class="row">
		<div class="col-md-12">
			<h3 class="text-center text-muted">
				h3. Lorem ipsum dolor sit amet.
			</h3>
		</div>
	</div>
</div>
	 <!-- <header>
		<div class="page-header">
			<div class="row">
				<c:import url="header.jsp"></c:import>
				<c:import url="menu_bar.jsp"></c:import>
			</div>
		</div>
	</header>
 -->
</div>
<!--<c:import url="footer.jsp"></c:import>-->
<script src="js/jquery.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
</body>
</html>