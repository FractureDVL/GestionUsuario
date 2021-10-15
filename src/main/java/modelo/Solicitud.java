
package modelo;

import java.util.Objects;


public class Solicitud {
 
    
    private String id;
    private String nombre;
    private String apellido;
    private String prioridad;
    private String tipoSolicitud;
    private String asunto;
    private String detalles;

    public Solicitud() {
    }

    public Solicitud(String id, String nombre, String apellido, String prioridad, String tipoSolicitud, String asunto, String detalles) {
        this.id = id;
        this.nombre = nombre;
        this.apellido = apellido;
        this.prioridad = prioridad;
        this.tipoSolicitud = tipoSolicitud;
        this.asunto = asunto;
        this.detalles = detalles;
    }

    //getters
    public String getId() {
        return id;
    }

    public String getNombre() {
        return nombre;
    }

    public String getApellido() {
        return apellido;
    }

    public String getPrioridad() {
        return prioridad;
    }

    public String getTipoSolicitud() {
        return tipoSolicitud;
    }

    public String getAsunto() {
        return asunto;
    }

    public String getDetalles() {
        return detalles;
    }

    //Setters
    public void setId(String id) {
        this.id = id;
    }

    public void setNombre(String nombre) {
        this.nombre = nombre;
    }

    public void setApellido(String apellido) {
        this.apellido = apellido;
    }

    public void setPrioridad(String prioridad) {
        this.prioridad = prioridad;
    }

    public void setTipoSolicitud(String tipoSolicitud) {
        this.tipoSolicitud = tipoSolicitud;
    }

    public void setAsunto(String asunto) {
        this.asunto = asunto;
    }

    public void setDetalles(String detalles) {
        this.detalles = detalles;
    }

    @Override
    public int hashCode() {
        int hash = 7;
        hash = 13 * hash + Objects.hashCode(this.id);
        hash = 13 * hash + Objects.hashCode(this.nombre);
        hash = 13 * hash + Objects.hashCode(this.apellido);
        hash = 13 * hash + Objects.hashCode(this.prioridad);
        hash = 13 * hash + Objects.hashCode(this.tipoSolicitud);
        hash = 13 * hash + Objects.hashCode(this.asunto);
        hash = 13 * hash + Objects.hashCode(this.detalles);
        return hash;
    }

    @Override
    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null) {
            return false;
        }
        if (getClass() != obj.getClass()) {
            return false;
        }
        final Solicitud other = (Solicitud) obj;
        if (!Objects.equals(this.id, other.id)) {
            return false;
        }
        if (!Objects.equals(this.nombre, other.nombre)) {
            return false;
        }
        if (!Objects.equals(this.apellido, other.apellido)) {
            return false;
        }
        if (!Objects.equals(this.prioridad, other.prioridad)) {
            return false;
        }
        if (!Objects.equals(this.tipoSolicitud, other.tipoSolicitud)) {
            return false;
        }
        if (!Objects.equals(this.asunto, other.asunto)) {
            return false;
        }
        if (!Objects.equals(this.detalles, other.detalles)) {
            return false;
        }
        return true;
    }

    @Override
    public String toString() {
        return "Solicitud{" + "id=" + id + ", nombre=" + nombre + ", apellido=" + apellido + ", prioridad=" + prioridad + ", tipoSolicitud=" + tipoSolicitud + ", asunto=" + asunto + ", detalles=" + detalles + '}';
    }

 
   
    
    
    
}
