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
			<c:import url="header.jsp"></c:import>
			<div class="row">
				<c:import url="menu_bar.jsp"></c:import>
				
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
								<a href="form_usuario">
							<button type="button" class="btn btn-default pull-right"> Cadastrar-se </button></a>			
						</div>
					</form:form>
				</div>
			</div>
		</div>
	</div>
	<c:import url="footer.jsp"></c:import>
	
<script src="js/jquery.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
</body>
</html>