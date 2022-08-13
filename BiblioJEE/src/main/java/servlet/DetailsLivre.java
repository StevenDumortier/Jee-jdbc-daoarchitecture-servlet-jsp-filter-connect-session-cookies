package servlet;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import dao.DaoException;
import dao.DaoFactory;
import dao.LivreDao;

/**
 * Servlet implementation class DetailsLivre
 */
@WebServlet("/detailsLivre")
public class DetailsLivre extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
	private LivreDao livreDao;
	
    public DetailsLivre() {
        super();
        livreDao = DaoFactory.getInstance().getLivreDao();
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		long id = Long.parseLong(request.getParameter("id"));
		
		try {
			request.setAttribute("livre", livreDao.trouver(id));
		} catch (DaoException e) {
			e.printStackTrace();
		}
		this.getServletContext().getRequestDispatcher("/WEB-INF/detailsLivre.jsp").forward(request, response);
	}

}
