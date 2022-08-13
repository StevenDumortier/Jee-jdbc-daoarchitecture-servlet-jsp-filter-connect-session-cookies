package servlet;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import dao.AuteurDao;
import dao.DaoException;
import dao.DaoFactory;
import dao.LivreDao;

/**
 * Servlet implementation class DetailsAuteur
 */
@WebServlet("/detailsAuteur")
public class DetailsAuteur extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
	private AuteurDao auteurDao;
	private LivreDao livreDao;
	
    public DetailsAuteur() {
        super();
        auteurDao = DaoFactory.getInstance().getAuteurDao();
        livreDao = DaoFactory.getInstance().getLivreDao();
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		long id = Long.parseLong(request.getParameter("id"));
		
		try {
			request.setAttribute("auteur", auteurDao.trouver(id));
			request.setAttribute("livres", livreDao.listerByAuteur(id));
		} catch (DaoException e) {
			e.printStackTrace();
		}
		this.getServletContext().getRequestDispatcher("/WEB-INF/detailsAuteur.jsp").forward(request, response);
	}

}
