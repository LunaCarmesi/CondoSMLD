/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package BusinessLogic;

import BusinessEntity.CuotasBE;
import Utils.ConexionORACLE;
import java.sql.*;
import java.util.ArrayList;
/**
 *
 * @author Edwin Vargas
 */
public class CuotasBL extends ConexionORACLE{
    public int Generar_cod(){
        int cod=0;
        String select = "select nvl(max(idcuota),0)+1 from cuota";
        try {
            Statement stm = getConexion().createStatement();
            ResultSet rs = stm.executeQuery(select);
            while(rs.next()){
                cod = rs.getInt(1);
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
        return cod;
    }
    public ArrayList<CuotasBE> listar(int id){
        ArrayList<CuotasBE> lista=null;
        String select = "SELECT * FROM CUOTA WHERE IdVivienda = DECODE("+ id +",0, IdVivienda, "+id+") order by FechaEmision";
        try {
            Statement stm = getConexion().createStatement();
            stm.executeQuery(select);
            ResultSet rs = stm.getResultSet();
            if(rs!=null){
                lista = new ArrayList<CuotasBE>();
                lista.clear();
                while(rs.next()){
                    CuotasBE item = new CuotasBE();
                    item.setIdCuota(rs.getInt("IdCuota"));
                    item.setFechaEmision(rs.getString("FechaEmision"));
                    item.setFechaVen(rs.getString("FechaVen"));
                    item.setConcepto(rs.getString("Concepto"));
                    item.setMonto(rs.getDouble("Monto"));
                    item.setEstado(rs.getString("Estado"));
                    item.setIdCPresupuetal(rs.getString("IdCPresupuetal"));
                    item.setIdVivienda(rs.getInt("IdVivienda"));
                    item.setIdTipoFondo(rs.getString("IdTipoFondo"));
                    lista.add(item);
                }
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
        return lista;
    }
    public boolean insert(CuotasBE c){
        int cod = Generar_cod();
        String ins = "insert into cuota values (?,?,?,?,?,?,?,?,?)";
        PreparedStatement pst = null;
        Connection cn;
        try {
            cn = getConexion();
            pst = cn.prepareStatement(ins);
            pst.setInt(1, cod);
            pst.setString(2, c.getFechaEmision());
            pst.setString(3, c.getFechaVen());
            pst.setString(4, c.getConcepto());
            pst.setDouble(5, c.getMonto());
            pst.setString(6, c.getEstado());
            pst.setString(7, c.getIdCPresupuetal());
            pst.setInt(8, c.getIdVivienda());
            pst.setString(9, c.getIdTipoFondo());
            pst.executeUpdate();
            cn.commit();
            return true;
        } catch (Exception e) {
            e.printStackTrace();
        }
        return false;
    }
}
