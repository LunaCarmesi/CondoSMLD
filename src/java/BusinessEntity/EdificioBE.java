
package BusinessEntity;


public class EdificioBE {
    int IdEdificio;
    String Nombre;
    String Email;
    String Clave;
    String Telefono;
    String Direccion;
    String Ciudad;
    String CodigoPostal;
    String IdPais;

    public EdificioBE(int IdEdificio, String Nombre, String Email, String Clave, String Telefono, String Direccion, String Ciudad, String CodigoPostal, String IdPais) {
        this.IdEdificio = IdEdificio;
        this.Nombre = Nombre;
        this.Email = Email;
        this.Clave = Clave;
        this.Telefono = Telefono;
        this.Direccion = Direccion;
        this.Ciudad = Ciudad;
        this.CodigoPostal = CodigoPostal;
        this.IdPais = IdPais;
    }

    public EdificioBE() {
    }

    public int getIdEdificio() {
        return IdEdificio;
    }

    public void setIdEdificio(int IdEdificio) {
        this.IdEdificio = IdEdificio;
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

    public String getClave() {
        return Clave;
    }

    public void setClave(String Clave) {
        this.Clave = Clave;
    }

    public String getTelefono() {
        return Telefono;
    }

    public void setTelefono(String Telefono) {
        this.Telefono = Telefono;
    }

    public String getDireccion() {
        return Direccion;
    }

    public void setDireccion(String Direccion) {
        this.Direccion = Direccion;
    }

    public String getCiudad() {
        return Ciudad;
    }

    public void setCiudad(String Ciudad) {
        this.Ciudad = Ciudad;
    }

    public String getCodigoPostal() {
        return CodigoPostal;
    }

    public void setCodigoPostal(String CodigoPostal) {
        this.CodigoPostal = CodigoPostal;
    }

    public String getIdPais() {
        return IdPais;
    }

    public void setIdPais(String IdPais) {
        this.IdPais = IdPais;
    }
    
}
