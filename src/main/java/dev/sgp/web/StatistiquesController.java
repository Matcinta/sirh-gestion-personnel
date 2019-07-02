package dev.sgp.web;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import dev.sgp.entite.VisiteWeb;

import dev.sgp.service.StatistiqueService;
import dev.sgp.util.Constantes;

public class StatistiquesController extends HttpServlet {

    private StatistiqueService statService = Constantes.STATISTIQUE_SERVICE;

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

        List<VisiteWeb> listeVisites = statService.listerVisiteWeb();
        
        req.setAttribute("listeVisites", listeVisites);
        req.getRequestDispatcher("/WEB-INF/views/collab/statistiques.jsp").forward(req, resp);
    }

}
