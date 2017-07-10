<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>


<!DOCTYPE html>
<html>
	<head>
	<meta charset="UTF-8">
	<title>Cadastrar Usuário</title>
	<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
</head>
<body>	
	<div class="container">
		<div class="container-fluid">
			<c:import url="header.jsp"></c:import>
			<div class="row">
				<c:import url="menu_bar.jsp"></c:import>
				<div class="col-md-9">
					<form:form method="post" modelAtribute="usuario" action="/usuarios">
					
						<input path="codigo" type="hidden"  />
					
						<spring:bind path="usuario">
							<div class="form-group ${status.error ? 'has-error' : ''}">
								<label for="email">E-mail: </label>
								<input type="text" class="form-control" />
								<form:errors path="email" />
							</div>
						</spring:bind>
						
						<spring:bind path="telefone">
							<div class="form-group ${status.error ? 'has-error' : ''}">
								<form:label path="telefone">Telefone: </form:label>
								<form:input path="telefone" type="text" cssClass="form-control" />
								<form:errors path="telefone" />
							</div>
						</spring:bind>
					
						<spring:bind path="username">
							<div class="form-group ${status.error ? 'has-error' : ''}">
								<form:label path="username">Username: </form:label>
								<form:input path="username" type="text" cssClass="form-control" />
								<form:errors path="username" />
							</div>
						</spring:bind>
						
						<spring:bind path="senha">
							<div class="form-group ${status.error ? 'has-error' : ''}">
								<form:label path="senha">Senha: </form:label>
								<form:input path="senha" type="text" cssClass="form-control" />
								<form:errors path="senha" />
							</div>
						</spring:bind>
						
						<spring:bind path="nome">
							<div class="form-group ${status.error ? 'has-error' : ''}">
								<form:label path="nome">Nome: </form:label>
								<form:input path="nome" type="text" cssClass="form-control" />
								<form:errors path="nome" />
							</div>
						</spring:bind>
						
						<spring:bind path="nome">
							<div class="form-group ${status.error ? 'has-error' : ''}">
								<form:label path="nome">Nome: </form:label>
								<form:input path="nome" type="text" cssClass="form-control" />
								<form:errors path="nome" />
							</div>
						</spring:bind>
						
						<spring:bind path="tipo">
							<div class="form-group ${status.error ? 'has-error' : ''}">
								<form:label path="tipo">Tipo: </form:label>
								<form:input path="tipo" type="text" cssClass="form-control" />
								<form:errors path="tipo" />
							</div>
						</spring:bind>
						
<%-- 						<spring:bind path="nome">
							<div class="form-group ${status.error ? 'has-error' : ''}">
								<form:label path="nome">Nome: </form:label>
								<form:input path="nome" type="text" cssClass="form-control" />
								<form:errors path="nome" />
							</div>
						</spring:bind> --%>
					</form:form>
				</div>
			</div>
			<c:import url="footer.jsp"></c:import>
		</div>
	</div>
</body>
</html>
