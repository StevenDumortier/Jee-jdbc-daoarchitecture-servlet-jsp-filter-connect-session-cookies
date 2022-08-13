<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Liste Livres</title>
<link type="text/css" rel="stylesheet"
	href="<c:url value="/inc/style.css" />" />
</head>
<body>
	<c:import url="/WEB-INF/menu.jsp" />

	<div class="view">
	
		<a href="<c:url value="/ajouterLivre" />"><button>Ajouter un livre</button></a>
		
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
							<th>Actions</th>
						</tr>
					</thead>
					<tbody>
						<c:forEach items="${ livres }" var="livre" varStatus="boucle">
							<tr class="${ boucle.index % 2 == 0 ? 'pair' : 'impair' }">
								<td><c:out value="${ livre.titre }" /></td>
								<td><c:out value="${ livre.categorie }" /></td>
								<td><a
									href="<c:url value="/detailsLivre"><c:param name="id" value="${ livre.id }" /></c:url>">Voir</a>
									 | 
									 <a href="<c:url value="/modifierLivre"><c:param name="id" value="${ livre.id }" /></c:url>">Modifier</a>
									 | 
									<a href="<c:url value="/supprimerLivre"><c:param name="id" value="${ livre.id }" /></c:url>">Supprimer</a>
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