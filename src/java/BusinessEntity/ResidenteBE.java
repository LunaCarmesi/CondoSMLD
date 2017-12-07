package BusinessEntity;

public class ResidenteBE {

    int IdResidente;
    String Nombre;
    String Email;
    String Telefono;
    String Estado;
    int IdVivienda;

    public ResidenteBE(int IdResidente, String Nombre, String Email, String Telefono, String Estado, int IdVivienda) {
        this.IdResidente = IdResidente;
        this.Nombre = Nombre;
        this.Email = Email;
        this.Telefono = Telefono;
        this.Estado = Estado;
        this.IdVivienda = IdVivienda;
    }

    public ResidenteBE() {
    }

    public int getIdResidente() {
        return IdResidente;
    }

    public void setIdResidente(int IdResidente) {
        this.IdResidente = IdResidente;
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

    public String getEstado() {
        return Estado;
    }

    public void setEstado(String Estado) {
        this.Estado = Estado;
    }

    public int getIdVivienda() {
        return IdVivienda;
    }

    public void setIdVivienda(int IdVivienda) {
        this.IdVivienda = IdVivienda;
    }

}
