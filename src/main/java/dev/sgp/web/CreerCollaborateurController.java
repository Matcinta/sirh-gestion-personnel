package dev.sgp.web;

import java.io.IOException;
import java.time.LocalDate;
import java.time.ZonedDateTime;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import dev.sgp.entite.Collaborateur;
import dev.sgp.service.CollaborateurService;
import dev.sgp.util.Constantes;

public class CreerCollaborateurController extends HttpServlet {

	// recuperation du service
		private CollaborateurService collabService = Constantes.COLLAB_SERVICE;
		private static int genMatricule;
		
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		
		req.getRequestDispatcher("/WEB-INF/views/collab/creerCollaborateur.jsp")
    	.forward(req, resp);
	}

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		
		String matricule = String.valueOf(genMatricule++);
		String nom = req.getParameter("nom");
		String prenom = req.getParameter("prenom");
		LocalDate dateNaissance = LocalDate.parse(req.getParameter("dateNaissance"));
		String adresse = req.getParameter("adresse");
        String numSecu = req.getParameter("securiteSociale");
        ZonedDateTime dateHeureCreation = ZonedDateTime.now();
        String emailPro = prenom + "." + nom + "@societe.com";
		
        if (nom.trim().isEmpty()) {
            resp.setStatus(400);
            resp.getWriter().write("Le nom saisi est incorect");
        } else if (prenom.trim().isEmpty()) {
            resp.setStatus(400);
            resp.getWriter().write("Le prénom saisi est incorrect");
        } else if (adresse.trim().isEmpty()) {
            resp.setStatus(400);
            resp.getWriter().write("L'adresse saisie est incorrecte");
        } else {
            Collaborateur collab = new Collaborateur(matricule, nom, dateNaissance, adresse,
            		numSecu, emailPro, "test", dateHeureCreation, true);

            collabService.sauvegarderCollaborateur(collab);

            req.getRequestDispatcher("/WEB-INF/views/collab/listerCollaborateurs.jsp").forward(req, resp);
        }

    
	}
	
	

}
