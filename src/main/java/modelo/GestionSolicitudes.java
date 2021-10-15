
package modelo;

import java.util.ArrayList;
import java.util.List;




public class GestionSolicitudes {
    
   private List<Solicitud> listaSolicitudes;

   
   public void agregarSolicitud(Solicitud s){
        this.listaSolicitudes.add(s);
    }
   
    public GestionSolicitudes() {
        listaSolicitudes = new ArrayList<Solicitud>();
    }

    public List<Solicitud> getListaSolicitudes() {
        return listaSolicitudes;
    }

    
    public void setListaSolicitudes(List<Solicitud> listaUsuarios) {
        this.listaSolicitudes = listaSolicitudes;
    }
   
    
    
    
}
