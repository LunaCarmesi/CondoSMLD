package BusinessLogic;

import BusinessEntity.ResidenteBE;
import Utils.ConexionORACLE;
import java.sql.*;
import java.util.ArrayList;

public class ResidenteBL extends ConexionORACLE {

    //LISTAR
    public ArrayList<ResidenteBE> listar(String id) {
        ArrayList<ResidenteBE> lista = null;
        String select = "SELECT * FROM Residentes WHERE IdResidente = DECODE('" + id + "','', IdResidente, '" + id + "')";
        try {
            Statement stm = getConexion().createStatement();
            stm.executeQuery(select);
            ResultSet rs = stm.getResultSet();
            if (rs != null) {
                lista = new ArrayList<ResidenteBE>();
                lista.clear();
                while (rs.next()) {
                    ResidenteBE item = new ResidenteBE();
                    item.setIdResidente(rs.getInt("IdResidente"));
                    item.setNombre(rs.getString("Nombre"));
                    item.setEmail(rs.getString("Email"));
                    item.setTelefono(rs.getString("Telefono"));
                    item.setEstado(rs.getString("Estado"));
                    item.setIdVivienda(rs.getInt("IdVivienda"));
                    lista.add(item);
                }
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
        return lista;
    }

    public boolean insert(ResidenteBE s) {
        String ins = "Insert into Residentes values" + "(?,?,?,?,?,?)";
        PreparedStatement pst = null;
        Connection cn;
        try {
            cn = getConexion();
            pst = cn.prepareStatement(ins);
            pst.setInt(1, s.getIdResidente());
            pst.setString(2, s.getNombre());
            pst.setString(3, s.getEmail());
            pst.setString(4, s.getTelefono());
            pst.setString(5, s.getEstado());
            pst.setInt(6, s.getIdVivienda());
            pst.executeUpdate();
            cn.commit();
        } catch (Exception e) {
            e.printStackTrace();
        }
        return false;
    }

    public boolean update(ResidenteBE s) {
        String upd = "update Residentes "
                + "set Nombre = ?, Email = ?, Telefono = ?, Estado = ?, IdVivienda = ? "
                + "where IdResidente = ?";
        PreparedStatement pst = null;
        Connection cn;
        try {
            cn = getConexion();
            pst = cn.prepareStatement(upd);
            pst.setInt(6, s.getIdResidente());
            pst.setString(1, s.getNombre());
            pst.setString(2, s.getEmail());
            pst.setString(3, s.getTelefono());
            pst.setString(4, s.getEstado());
            pst.setInt(5, s.getIdVivienda());
            pst.executeUpdate();
            return true;
        } catch (Exception e) {
            e.printStackTrace();
        }
        return false;
    }

    public boolean delete(String id) {
        String dlt = "delete from Residentes "
                + "where IdResidente = ?";
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
