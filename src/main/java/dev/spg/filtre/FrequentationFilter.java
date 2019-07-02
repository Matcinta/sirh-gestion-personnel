package dev.spg.filtre;

import java.io.IOException;

import javax.servlet.Filter;
import javax.servlet.FilterChain;
import javax.servlet.FilterConfig;
import javax.servlet.ServletException;
import javax.servlet.ServletRequest;
import javax.servlet.ServletResponse;
import javax.servlet.http.HttpServletRequest;

import dev.sgp.entite.VisiteWeb;
import dev.sgp.service.StatistiqueService;
import dev.sgp.util.Constantes;

public class FrequentationFilter implements Filter {

    private FilterConfig config = null;
    private StatistiqueService statistiqueService = Constantes.STATISTIQUE_SERVICE;
    
    @Override
    public void init(FilterConfig filterConfig) throws ServletException {
        this.config = filterConfig;
        config.getServletContext().log("TimerFilter initialized");
        
        
    }

    @Override
    public void doFilter(ServletRequest req, ServletResponse resp, FilterChain chain)
            throws IOException, ServletException {
        
        long before = System.currentTimeMillis();
        chain.doFilter(req, resp);
        long after = System.currentTimeMillis();
        String path = ((HttpServletRequest)req).getRequestURI();
        long delta = after-before;
        config.getServletContext().log(path + ":" + delta);
        
        statistiqueService.sauvegarderVisiteWeb(new VisiteWeb(path, delta));
        
        
    }

    @Override
    public void destroy() {
        this.config = null;
        
    }

}
