package BusinessLogic;

import BusinessEntity.EmpleadosBE;
import Utils.ConexionORACLE;
import java.sql.*;
import java.util.ArrayList;

public class EmpleadosBL extends ConexionORACLE {

    //LISTAR
    public ArrayList<EmpleadosBE> listar(String id) {
        ArrayList<EmpleadosBE> lista = null;
        String select = "SELECT * FROM Empleados WHERE IdEmpleado = DECODE('" + id + "','', IdEmpleado, '" + id + "')";
        try {
            Statement stm = getConexion().createStatement();
            stm.executeQuery(select);
            ResultSet rs = stm.getResultSet();
            if (rs != null) {
                lista = new ArrayList<EmpleadosBE>();
                lista.clear();
                while (rs.next()) {
                    EmpleadosBE item = new EmpleadosBE();
                    item.setIdEmpleado(rs.getInt("IdEmpleado"));
                    item.setNombre(rs.getString("Nombre"));
                    item.setEmail(rs.getString("Email"));
                    item.setTelefono(rs.getString("Telefono"));
                    item.setComentarios(rs.getString("Comentarios"));
                    item.setEstado(rs.getString("Estado"));
                    lista.add(item);
                }
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
        return lista;
    }

    public boolean insert(EmpleadosBE s) {
        String ins = "Insert into Empleados values" 
                + "(?,?,?,?,?,?)";
        PreparedStatement pst = null;
        Connection cn;
        try {
            cn = getConexion();
            pst = cn.prepareStatement(ins);
            pst.setInt(1, s.getIdEmpleado());
            pst.setString(2, s.getNombre());
            pst.setString(3, s.getEmail());
            pst.setString(4, s.getTelefono());
            pst.setString(5, s.getComentarios());
            pst.setString(6, s.getEstado());
            pst.executeUpdate();
            cn.commit();
        } catch (Exception e) {
            e.printStackTrace();
        }
        return false;
    }
    public boolean update(EmpleadosBE s){
        String upd = "update Empleados "
                + "set Nombre = ?, Email=?,Telefono=?,Comentarios=?,Estado=? "
                + "where IdEmpleado = ?";
        PreparedStatement pst =null;
        Connection cn;
        try {
            cn=getConexion();
            pst = cn.prepareStatement(upd);
            pst.setInt(6, s.getIdEmpleado());
            pst.setString(1, s.getNombre());
            pst.setString(2, s.getEmail());
            pst.setString(3, s.getTelefono());
            pst.setString(4, s.getComentarios());
            pst.setString(5, s.getEstado());
            pst.executeUpdate();
            return true;
        } catch (Exception e) {
            e.printStackTrace();
        }
        return false;
    }
        public boolean delete(String id){
        String dlt="delete from Empleados "
                + "where IdEmpleado = ?";
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
