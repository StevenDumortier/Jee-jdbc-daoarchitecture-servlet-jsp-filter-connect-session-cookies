<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>


<label for="prenomAuteur">Prénom</label>
<input type="text" id="prenomAuteur" name="prenomAuteur" value="<c:out value="${ auteur.prenom }" />" size="20" />
<span class="erreur">${ erreurs['prenomAuteur'] }</span>
<br/>

<label for="nomAuteur">Nom</label>
<input type="text" id="nomAuteur" name="nomAuteur" value="<c:out value="${ auteur.nom }" />" size="20" />
<span class="erreur">${ erreurs['nomAuteur'] }</span>
<br/>

<label for="telephoneAuteur">Téléphone</label>
<input type="text" id="telephoneAuteur" name="telephoneAuteur" value="<c:out value="${ auteur.telephone }" />" size="10" />
<span class="erreur">${ erreurs['telephoneAuteur'] }</span>
<br/>

<label for="emailAuteur">Email</label>
<input type="email" id="emailAuteur" name="emailAuteur" value="<c:out value="${ auteur.email }" />" size="60" />
<span class="erreur">${ erreurs['emailAuteur'] }</span>
<br/>

<br/>
<span class="erreur">${ erreurs['auteur'] }</span>
<p class="erreur">${ resultat }</p>