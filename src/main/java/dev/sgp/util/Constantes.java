package dev.sgp.util;

import dev.sgp.service.CollaborateurService;
import dev.sgp.service.DepartementService;
import dev.sgp.service.StatistiqueService;

public interface Constantes {

    CollaborateurService COLLAB_SERVICE = new CollaborateurService();
    DepartementService DEPARTEMENT_SERVICE = new DepartementService();
    StatistiqueService STATISTIQUE_SERVICE = new StatistiqueService();

}
