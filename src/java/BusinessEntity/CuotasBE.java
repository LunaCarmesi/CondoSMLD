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
public class CuotasBE {

    int IdCuota;
    String FechaEmision;
    String FechaVen;
    String Concepto;
    double Monto;
    String Estado;
    String IdCPresupuetal;
    int IdVivienda;
    String IdTipoFondo;

    public CuotasBE(int IdCuota, String FechaEmision, String FechaVen, String Concepto, double Monto, String Estado, String IdCPresupuetal, int IdVivienda, String IdTipoFondo) {
        this.IdCuota = IdCuota;
        this.FechaEmision = FechaEmision;
        this.FechaVen = FechaVen;
        this.Concepto = Concepto;
        this.Monto = Monto;
        this.Estado = Estado;
        this.IdCPresupuetal = IdCPresupuetal;
        this.IdVivienda = IdVivienda;
        this.IdTipoFondo = IdTipoFondo;
    }

    public CuotasBE() {
    }

    public int getIdCuota() {
        return IdCuota;
    }

    public void setIdCuota(int IdCuota) {
        this.IdCuota = IdCuota;
    }

    public String getFechaEmision() {
        return FechaEmision;
    }

    public void setFechaEmision(String FechaEmision) {
        this.FechaEmision = FechaEmision;
    }

    public String getFechaVen() {
        return FechaVen;
    }

    public void setFechaVen(String FechaVen) {
        this.FechaVen = FechaVen;
    }

    public String getConcepto() {
        return Concepto;
    }

    public void setConcepto(String Concepto) {
        this.Concepto = Concepto;
    }

    public double getMonto() {
        return Monto;
    }

    public void setMonto(double Monto) {
        this.Monto = Monto;
    }

    public String getEstado() {
        return Estado;
    }

    public void setEstado(String Estado) {
        this.Estado = Estado;
    }

    public String getIdCPresupuetal() {
        return IdCPresupuetal;
    }

    public void setIdCPresupuetal(String IdCPresupuetal) {
        this.IdCPresupuetal = IdCPresupuetal;
    }

    public int getIdVivienda() {
        return IdVivienda;
    }

    public void setIdVivienda(int IdVivienda) {
        this.IdVivienda = IdVivienda;
    }

    public String getIdTipoFondo() {
        return IdTipoFondo;
    }

    public void setIdTipoFondo(String IdTipoFondo) {
        this.IdTipoFondo = IdTipoFondo;
    }
    
    
}
