
package BusinessEntity;


public class ViviendaBE {
       int IdVivienda;   
       int NroVivienda;  
       String Telefono;     
       String Estado;       
       int PorceParti;   
       int AreaOcu;      
       int AreaTech;     
       String Comentario;
       String IdSeccion; 

    public ViviendaBE(int IdVivienda, int NroVivienda, String Telefono, String Estado, int PorceParti, int AreaOcu, int AreaTech, String Comentario, String IdSeccion) {
        this.IdVivienda = IdVivienda;
        this.NroVivienda = NroVivienda;
        this.Telefono = Telefono;
        this.Estado = Estado;
        this.PorceParti = PorceParti;
        this.AreaOcu = AreaOcu;
        this.AreaTech = AreaTech;
        this.Comentario = Comentario;
        this.IdSeccion = IdSeccion;
    }
            
     public ViviendaBE(){}

    public int getIdVivienda() {
        return IdVivienda;
    }

    public void setIdVivienda(int IdVivienda) {
        this.IdVivienda = IdVivienda;
    }

    public int getNroVivienda() {
        return NroVivienda;
    }

    public void setNroVivienda(int NroVivienda) {
        this.NroVivienda = NroVivienda;
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

    public int getPorceParti() {
        return PorceParti;
    }

    public void setPorceParti(int PorceParti) {
        this.PorceParti = PorceParti;
    }

    public int getAreaOcu() {
        return AreaOcu;
    }

    public void setAreaOcu(int AreaOcu) {
        this.AreaOcu = AreaOcu;
    }

    public int getAreaTech() {
        return AreaTech;
    }

    public void setAreaTech(int AreaTech) {
        this.AreaTech = AreaTech;
    }

    public String getComentario() {
        return Comentario;
    }

    public void setComentario(String Comentario) {
        this.Comentario = Comentario;
    }

    public String getIdSeccion() {
        return IdSeccion;
    }

    public void setIdSeccion(String IdSeccion) {
        this.IdSeccion = IdSeccion;
    }
    
}
