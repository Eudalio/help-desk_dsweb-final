<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<form:form method="post" modelAttribute="chamado" action="${url_base}${acao}">
	<form:input path="codigo" type="hidden"  />
	
	<spring:bind path="descricao">
	<div class="form-group ${status.error ? 'has-error' : ''}">
		<form:label path="descricao">Descrição</form:label>
		<form:input path="descricao" type="text" cssClass="form-control" />
		<form:errors path="descricao" />
	</div>
	</spring:bind>
	
	<button type="submit" class="btn btn-primary">Salvar</button>
</form:form>