package dev.sgp.web;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class EditerCollaborateursController extends HttpServlet {

  
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        
        req.getRequestDispatcher("/WEB-INF/views/collab/editerCollaborateur.jsp")
        .forward(req, resp);
      
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

        String matriculeParam = req.getParameter("matricule");
        String titreParam = req.getParameter("titre");
        String nomParam = req.getParameter("nom");
        String prenomParam = req.getParameter("prenom");
        
        if(matriculeParam == null || "".equals(matriculeParam)
                || titreParam == null || "".equals(titreParam)
                || nomParam == null || "".equals(nomParam)
                || prenomParam == null || "".equals(prenomParam)) {
            resp.setStatus(HttpServletResponse.SC_BAD_REQUEST);
            resp.getWriter().write("<p>Les parametres suivants sont incorrects:" + "</p>");
        } else {
            
        }
    }    
}
