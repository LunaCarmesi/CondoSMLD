
package BusinessEntity;

public class SeccionBE {
    String IdSeccion;
    String Descripcion;

    public SeccionBE(String IdSeccion, String Descripcion) {
        this.IdSeccion = IdSeccion;
        this.Descripcion = Descripcion;
    }
    public SeccionBE(){}

    public String getIdSeccion() {
        return IdSeccion;
    }

    public void setIdSeccion(String IdSeccion) {
        this.IdSeccion = IdSeccion;
    }

    public String getDescripcion() {
        return Descripcion;
    }

    public void setDescripcion(String Descripcion) {
        this.Descripcion = Descripcion;
    }
    
}
