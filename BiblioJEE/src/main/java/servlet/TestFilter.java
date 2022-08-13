package servlet;

import java.io.IOException;
import javax.servlet.FilterChain;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebFilter;
import javax.servlet.http.HttpFilter;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet Filter implementation class TestFilter
 */
//@WebFilter("/*") //Filrer toutes les servlets
@WebFilter(urlPatterns = {"/supprimerAuteur", "/supprimerLivre"}) //Filtrer une liste de servlets
public class TestFilter extends HttpFilter {

	private static final long serialVersionUID = 1L;
	

	@Override
	protected void doFilter(HttpServletRequest request, HttpServletResponse response, FilterChain chain)
			throws IOException, ServletException {
		
		if(request.getParameter("id") == null) {
			request.getSession().setAttribute("confirmMessage", "Aucun id à supprimer...");
		
			if(request.getRequestURI().contains("/supprimerAuteur")) {
				response.sendRedirect( request.getContextPath() + "/listeAuteurs" );
			} else {
				response.sendRedirect( request.getContextPath() + "/listeLivres" );
			}
		} else {
			chain.doFilter(request, response);
		}
		
	}


}
