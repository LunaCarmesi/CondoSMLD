
package BusinessEntity;

public class VehiculoBE {
      int IdVehiculo;   
      int NroEstacio;   
      String Placa;        
      String Descripcion; 
      int IdVivienda;  

    public VehiculoBE(int IdVehiculo, int NroEstacio, String Placa, String Descripcion, int IdVivienda) {
        this.IdVehiculo = IdVehiculo;
        this.NroEstacio = NroEstacio;
        this.Placa = Placa;
        this.Descripcion = Descripcion;
        this.IdVivienda = IdVivienda;
    }
     
    public VehiculoBE(){}

    public int getIdVehiculo() {
        return IdVehiculo;
    }

    public void setIdVehiculo(int IdVehiculo) {
        this.IdVehiculo = IdVehiculo;
    }

    public int getNroEstacio() {
        return NroEstacio;
    }

    public void setNroEstacio(int NroEstacio) {
        this.NroEstacio = NroEstacio;
    }

    public String getPlaca() {
        return Placa;
    }

    public void setPlaca(String Placa) {
        this.Placa = Placa;
    }

    public String getDescripcion() {
        return Descripcion;
    }

    public void setDescripcion(String Descripcion) {
        this.Descripcion = Descripcion;
    }

    public int getIdVivienda() {
        return IdVivienda;
    }

    public void setIdVivienda(int IdVivienda) {
        this.IdVivienda = IdVivienda;
    }
    
    
    
}
