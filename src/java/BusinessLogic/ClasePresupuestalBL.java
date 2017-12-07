/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package BusinessLogic;

import BusinessEntity.ClasePresupuestalBE;
import java.sql.*;
import java.util.ArrayList;
import Utils.ConexionORACLE;
/**
 *
 * @author Edwin Vargas
 */
public class ClasePresupuestalBL extends ConexionORACLE{
    public ArrayList<ClasePresupuestalBE> listar(String TipoClase){
        ArrayList<ClasePresupuestalBE> lista = null;
        String select = "SELECT * FROM Clase_Presupuestal where TipoClasePre = DECODE('" + TipoClase + "','', TipoClasePre, '" + TipoClase + "')";
        try {
            Statement stm = getConexion().createStatement();
            stm.executeQuery(select);
            ResultSet rs = stm.getResultSet();
            if(rs != null){
                lista = new ArrayList<ClasePresupuestalBE>();
                lista.clear();
                while(rs.next()){
                    ClasePresupuestalBE item = new ClasePresupuestalBE();
                    item.setIdCPresupuetal(rs.getString("IdCPresupuetal"));
                    item.setDescripcion(rs.getString("Descripcion"));
                    item.setTipoClasePre(rs.getString("TipoClasePre"));
                    lista.add(item);
                }
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
        return lista;
    }
}
