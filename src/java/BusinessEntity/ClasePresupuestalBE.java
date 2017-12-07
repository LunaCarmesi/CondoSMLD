/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package BusinessEntity;

/**
 *
 * @author Edwin Vargas
 */
public class ClasePresupuestalBE {

    String IdCPresupuetal;
    String Descripcion;
    String TipoClasePre;

    public ClasePresupuestalBE(String IdCPresupuetal, String Descripcion, String TipoClasePre) {
        this.IdCPresupuetal = IdCPresupuetal;
        this.Descripcion = Descripcion;
        this.TipoClasePre = TipoClasePre;
    }

    public ClasePresupuestalBE() {
    }

    public String getIdCPresupuetal() {
        return IdCPresupuetal;
    }

    public void setIdCPresupuetal(String IdCPresupuetal) {
        this.IdCPresupuetal = IdCPresupuetal;
    }

    public String getDescripcion() {
        return Descripcion;
    }

    public void setDescripcion(String Descripcion) {
        this.Descripcion = Descripcion;
    }

    public String getTipoClasePre() {
        return TipoClasePre;
    }

    public void setTipoClasePre(String TipoClasePre) {
        this.TipoClasePre = TipoClasePre;
    }

    
}
