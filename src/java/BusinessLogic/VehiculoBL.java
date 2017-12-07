package BusinessLogic;

import BusinessEntity.VehiculoBE;
import Utils.ConexionORACLE;
import java.sql.*;
import java.util.ArrayList;

public class VehiculoBL extends ConexionORACLE {

    //LISTAR
    public ArrayList<VehiculoBE> listar(String id) {
        ArrayList<VehiculoBE> lista = null;
        String select = "SELECT * FROM Vehiculos WHERE IdVehiculo = DECODE('" + id + "','', IdVehiculo, '" + id + "')";
        try {
            Statement stm = getConexion().createStatement();
            stm.executeQuery(select);
            ResultSet rs = stm.getResultSet();
            if (rs != null) {
                lista = new ArrayList<VehiculoBE>();
                lista.clear();
                while (rs.next()) {
                    VehiculoBE item = new VehiculoBE();
                    item.setIdVehiculo(rs.getInt("IdVehiculo"));
                    item.setNroEstacio(rs.getInt("NroEstacio"));
                    item.setPlaca(rs.getString("Placa"));
                    item.setDescripcion(rs.getString("Descripcion"));
                    item.setIdVivienda(rs.getInt("IdVivienda"));
                    lista.add(item);
                }
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
        return lista;
    }

    public boolean insert(VehiculoBE s) {
        String ins = "Insert into Vehiculos values" + "(?,?,?,?,?)";
        PreparedStatement pst = null;
        Connection cn;
        try {
            cn = getConexion();
            pst = cn.prepareStatement(ins);
            pst.setInt(1, s.getIdVehiculo());
            pst.setInt(2, s.getNroEstacio());
            pst.setString(3, s.getPlaca());
            pst.setString(4, s.getDescripcion());
            pst.setInt(5, s.getIdVivienda());
            pst.executeUpdate();
            cn.commit();
        } catch (Exception e) {
            e.printStackTrace();
        }
        return false;
    }

    public boolean update(VehiculoBE s) {
        String upd = "update Vehiculos "
                + "set NroEstacio = ?, Placa =?, Descripcion = ?, IdVivienda = ? "
                + "where IdVehiculo = ?";
        PreparedStatement pst = null;
        Connection cn;
        try {
            cn = getConexion();
            pst = cn.prepareStatement(upd);
            pst.setInt(5, s.getIdVehiculo());
            pst.setInt(1, s.getNroEstacio());
            pst.setString(2, s.getPlaca());
            pst.setString(3, s.getDescripcion());
            pst.setInt(4, s.getIdVivienda());
            pst.executeUpdate();
            return true;
        } catch (Exception e) {
            e.printStackTrace();
        }
        return false;
    }

    public boolean delete(String id) {
        String dlt = "delete from Vehiculos "
                + "where IdVehiculo = ?";
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
