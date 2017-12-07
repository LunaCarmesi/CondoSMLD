
package BusinessEntity;
    
public class EmpleadosBE {
    int IdEmpleado;
    String Nombre;
    String Email;
    String Telefono;
    String Comentarios;
    String Estado;

    public EmpleadosBE(int IdEmpleado, String Nombre, String Email, String Telefono, String Comentarios, String Estado) {
        this.IdEmpleado = IdEmpleado;
        this.Nombre = Nombre;
        this.Email = Email;
        this.Telefono = Telefono;
        this.Comentarios = Comentarios;
        this.Estado = Estado;
    }

    public EmpleadosBE(){}

    public int getIdEmpleado() {
        return IdEmpleado;
    }

    public void setIdEmpleado(int IdEmpleado) {
        this.IdEmpleado = IdEmpleado;
    }

    public String getNombre() {
        return Nombre;
    }

    public void setNombre(String Nombre) {
        this.Nombre = Nombre;
    }

    public String getEmail() {
        return Email;
    }

    public void setEmail(String Email) {
        this.Email = Email;
    }

    public String getTelefono() {
        return Telefono;
    }

    public void setTelefono(String Telefono) {
        this.Telefono = Telefono;
    }

    public String getComentarios() {
        return Comentarios;
    }

    public void setComentarios(String Comentarios) {
        this.Comentarios = Comentarios;
    }

    public String getEstado() {
        return Estado;
    }

    public void setEstado(String Estado) {
        this.Estado = Estado;
    }
    
   
}
