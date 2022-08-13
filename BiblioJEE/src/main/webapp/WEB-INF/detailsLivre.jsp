<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Détails livre</title>
<link type="text/css" rel="stylesheet"
	href="<c:url value="/inc/style.css" />" />
</head>
<body>
	<c:import url="/WEB-INF/menu.jsp" />

	<div class="view">
		<table>
			<thead>
				<tr>
					<th>Titre</th>
					<th>Auteur</th>
					<th>Catégorie</th>
					<th>Nombre de pages</th>
				</tr>
			</thead>
			<tbody>
				<tr class="impair">
					<td><c:out value="${ livre.titre }" /></td>
					<td><c:out value="${ livre.auteur.prenom }" /> <c:out value="${ livre.auteur.nom }" /></td>
					<td><c:out value="${ livre.categorie }" /></td>
					<td><c:out value="${ livre.nbPages }" /></td>
				</tr>
			</tbody>
		</table>


	</div>
</body>
</html>