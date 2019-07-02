package dev.sgp.entite;

public class VisiteWeb {

    Integer id;
    String chemin;
    long tempsExecution;
    
    
    public VisiteWeb() {
        
    }
   

    public VisiteWeb(String chemin, long delta) {
        super();
        this.chemin = chemin;
        this.tempsExecution = delta;
    }



    public Integer getId() {
        return id;
    }
    public void setId(Integer id) {
        this.id = id;
    }
    public String getChemin() {
        return chemin;
    }
    public void setChemin(String chemin) {
        this.chemin = chemin;
    }
    public long getTempsExecution() {
        return tempsExecution;
    }
    public void setTempsExecution(long tempsExecution) {
        this.tempsExecution = tempsExecution;
    }
    
    
    
}
