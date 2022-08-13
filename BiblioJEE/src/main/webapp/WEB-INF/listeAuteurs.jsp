<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Liste Auteurs</title>
<link type="text/css" rel="stylesheet"
	href="<c:url value="/inc/style.css" />" />
</head>
<body>
	<c:import url="/WEB-INF/menu.jsp" />

	<div class="view">
	
		<a href="<c:url value="/ajouterAuteur" />"><button>Ajouter un auteur</button></a>
	
		<c:choose>
			<c:when test="${ empty auteurs }">
				<p>Aucun auteur trouvé...</p>
			</c:when>
			<c:otherwise>
				<table>
					<thead>
						<tr>
							<th>Nom</th>
							<th>Prénom</th>
							<th>Actions</th>
						</tr>
					</thead>
					<tbody>
						<c:forEach items="${ auteurs }" var="auteur" varStatus="boucle">
							<tr class="${ boucle.index % 2 == 0 ? 'pair' : 'impair' }">
								<td><c:out value="${ auteur.nom }" /></td>
								<td><c:out value="${ auteur.prenom }" /></td>
								<td>
									<a href="<c:url value="/detailsAuteur"><c:param name="id" value="${ auteur.id }" /></c:url>">Voir</a>
									 | 
									<a href="<c:url value="/modifierAuteur"><c:param name="id" value="${ auteur.id }" /></c:url>">Modifier</a>
									 | 
									<a href="<c:url value="/supprimerAuteur"><c:param name="id" value="${ auteur.id }" /></c:url>">Supprimer</a>
								</td>
							</tr>
						</c:forEach>
					</tbody>
				</table>
			</c:otherwise>
		</c:choose>
		
		<span>${ sessionScope.confirmMessage }</span>
	</div>

</body>
</html>