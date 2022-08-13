<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Détails auteur</title>
<link type="text/css" rel="stylesheet"
	href="<c:url value="/inc/style.css" />" />
</head>
<body>
	<c:import url="/WEB-INF/menu.jsp" />

	<div class="view">
		<table>
			<thead>
				<tr>
					<th>Nom</th>
					<th>Prénom</th>
					<th>Téléphone</th>
					<th>Email</th>
				</tr>
			</thead>
			<tbody>
				<tr class="impair">
					<td><c:out value="${ auteur.nom }" /></td>
					<td><c:out value="${ auteur.prenom }" /></td>
					<td><c:out value="${ auteur.telephone }" /></td>
					<td><c:out value="${ auteur.email }" /></td>
				</tr>
			</tbody>
		</table>

		<h2>Liste des livres de l'auteurs :</h2>
		<c:choose>
			<c:when test="${ empty livres }">
				<p>Aucun livre trouvé...</p>
			</c:when>
			<c:otherwise>
				<table>
					<thead>
						<tr>
							<th>Titre</th>
							<th>Catégorie</th>
						</tr>
					</thead>
					<tbody>
						<c:forEach items="${ livres }" var="livre" varStatus="boucle">
							<tr class="${ boucle.index % 2 == 0 ? 'pair' : 'impair' }">
								<td><c:out value="${ livre.titre }" /></td>
								<td><c:out value="${ livre.categorie }" /></td>
							</tr>
						</c:forEach>
					</tbody>
				</table>
			</c:otherwise>
		</c:choose>

	</div>
</body>
</html>