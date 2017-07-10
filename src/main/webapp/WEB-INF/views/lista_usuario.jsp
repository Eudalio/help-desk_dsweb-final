<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
	<head>
	<meta charset="UTF-8">
	<title>Lista Usuarios</title>
	<link rel="stylesheet" href="css/bootstrap.min.css" />
</head>
<body>
<div class="container">
	<h1>Lista de Usuários</h1>
	<c:if test="${not empty msg}">
		<div class="alert alert-success alert-dismissible" role="alert">
		<button type="button" class="close" data-dismiss="alert" aria-label="Close">
			<span aria-hidden="true">&times;</span>
		</button>
		<p>${msg}</p>
		</div>
	</c:if>
	<a href="/usuarios/add" class="btn btn-primary">Novo Usuário</a>
	<c:if test="${not empty usuarios}">
	<table id="tabela_usuarios" class="table table-hover">
		<thead>
			<tr><th>Código</th><th>Descrição</th><th>Status</th></tr>
		</thead>
		<tbody>
		<c:forEach var="c" items="${usuarios}">
			<tr><td>${c.codigo}</td><td>${c.descricao}</td><td>${c.status}</td>
			<td><a href="/usuarios/${c.codigo}/update" class="btn btn-primary">Altera</a></td>
			<td><a href="/usuarios/${c.codigo}/delete" class="btn btn-danger" onclick="return confirm('Confirma remoção?')" >Deleta</a></td>
			</tr>
		</c:forEach>
		</tbody>
	</table>
	</c:if>
</div>
<script src="js/jquery-3.2.1.min.js"></script>
<script src="js/bootstrap.min.js"></script>
<script>
</script>
</body>
</html>