
package BusinessLogic;

import BusinessEntity.SeccionBE;
import Utils.ConexionORACLE;
import java.sql.*;
import java.util.ArrayList;

public class SeccionBL extends ConexionORACLE{
    //listar
    public ArrayList<SeccionBE> listar(String id){
        ArrayList<SeccionBE> lista = null;
        //String select = "select * from Seccion where IdSeccion = '01'";
          String select = "SELECT * FROM seccion WHERE idseccion = DECODE('"+ id +"','', IdSeccion, '"+id+"')";    
        try {
            Statement stm = getConexion().createStatement();
            stm.executeQuery(select);
            ResultSet rs = stm.getResultSet();
            if(rs != null){
                lista = new ArrayList<SeccionBE>();
                lista.clear();
                while(rs.next()){
                    SeccionBE item = new SeccionBE();
                    item.setIdSeccion(rs.getString("IdSeccion"));
                    item.setDescripcion(rs.getString("Descripcion"));
                    lista.add(item);
                }
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
        return lista;
    }
    
    
    public boolean insert(SeccionBE s){
        String ins = "Insert into Seccion values "
                + "(?,?)";
        PreparedStatement pst = null;
        Connection cn;
        try {
            cn=getConexion();
            pst = cn.prepareStatement(ins);
            pst.setString(1, s.getIdSeccion());
            pst.setString(2, s.getDescripcion());
            pst.executeUpdate();
            cn.commit();
            return true;
        } catch (Exception e) {
            e.printStackTrace();
        }
        return false;
    }
    
    public boolean update(SeccionBE s){
        String upd = "update Seccion "
                + "set Descripcion = ? "
                + "where IdSeccion = ?";
        PreparedStatement pst =null;
        Connection cn;
        try {
            cn=getConexion();
            pst = cn.prepareStatement(upd);
            pst.setString(1, s.getDescripcion());
            pst.setString(2, s.getIdSeccion());
            pst.executeUpdate();
            return true;
        } catch (Exception e) {
            e.printStackTrace();
        }
        return false;
    }
    public boolean delete(String id){
        String dlt="delete from Seccion "
                + "where IdSeccion = ?";
        PreparedStatement pst = null;
        Connection cn;
        try {
            cn = getConexion();
            pst = cn.prepareStatement(dlt);
            pst.setString(1, id);
            pst.executeUpdate();
            cn.commit();
            return true;
        } catch (Exception e) {
            e.printStackTrace();
        }
        return false;
    }
}
