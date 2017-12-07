package BusinessEntity;

public class ProveedorBE {

    int IdProveedor;
    String Descripcion;
    String Nombre;
    String Direccion;
    String Telefono;
    String Email;
    String PaginaWeb;

    public ProveedorBE(int IdProveedor, String Descripcion, String Nombre, String Direccion, String Telefono, String Email, String PaginaWeb) {
        this.IdProveedor = IdProveedor;
        this.Descripcion = Descripcion;
        this.Nombre = Nombre;
        this.Direccion = Direccion;
        this.Telefono = Telefono;
        this.Email = Email;
        this.PaginaWeb = PaginaWeb;
    }

    public ProveedorBE() {
    }

    public int getIdProveedor() {
        return IdProveedor;
    }

    public void setIdProveedor(int IdProveedor) {
        this.IdProveedor = IdProveedor;
    }

    public String getDescripcion() {
        return Descripcion;
    }

    public void setDescripcion(String Descripcion) {
        this.Descripcion = Descripcion;
    }

    public String getNombre() {
        return Nombre;
    }

    public void setNombre(String Nombre) {
        this.Nombre = Nombre;
    }

    public String getDireccion() {
        return Direccion;
    }

    public void setDireccion(String Direccion) {
        this.Direccion = Direccion;
    }

    public String getTelefono() {
        return Telefono;
    }

    public void setTelefono(String Telefono) {
        this.Telefono = Telefono;
    }

    public String getEmail() {
        return Email;
    }

    public void setEmail(String Email) {
        this.Email = Email;
    }

    public String getPaginaWeb() {
        return PaginaWeb;
    }

    public void setPaginaWeb(String PaginaWeb) {
        this.PaginaWeb = PaginaWeb;
    }

    

}
