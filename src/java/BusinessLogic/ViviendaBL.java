package BusinessLogic;

import BusinessEntity.ViviendaBE;
import Utils.ConexionORACLE;
import java.sql.*;
import java.util.ArrayList;

public class ViviendaBL extends ConexionORACLE {

    public ArrayList<ViviendaBE> ListarViviendas() {
        ArrayList<ViviendaBE> lista = null;
        String select = "select v.idvivienda,substr(s.descripcion,-1) || v.nrovivienda as sv from vivienda v, seccion s"
                + " where v.idseccion = s.idseccion";
        try {
            Statement stm = getConexion().createStatement();
            stm.executeQuery(select);
            ResultSet rs = stm.getResultSet();
            if (rs != null) {
                lista = new ArrayList<ViviendaBE>();
                lista.clear();
                while (rs.next()) {
                    ViviendaBE item = new ViviendaBE();
                    item.setIdVivienda(rs.getInt("IdVivienda"));
                    item.setComentario(rs.getString("sv"));
                    lista.add(item);
                }
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
        return lista;
    }

    //Listar
    public ArrayList<ViviendaBE> listar(String id) {
        ArrayList<ViviendaBE> lista = null;
        String select = "SELECT * FROM Vivienda WHERE IdVivienda = DECODE('" + id + "','', IdVivienda, '" + id + "')";
        try {
            Statement stm = getConexion().createStatement();
            stm.executeQuery(select);
            ResultSet rs = stm.getResultSet();
            if (rs != null) {
                lista = new ArrayList<ViviendaBE>();
                lista.clear();
                while (rs.next()) {
                    ViviendaBE item = new ViviendaBE();
                    item.setIdVivienda(rs.getInt("IdVivienda"));
                    item.setNroVivienda(rs.getInt("NroVivienda"));
                    item.setTelefono(rs.getString("Telefono"));
                    item.setEstado(rs.getString("Estado"));
                    item.setPorceParti(rs.getInt("PorceParti"));
                    item.setAreaOcu(rs.getInt("AreaOcu"));
                    item.setAreaTech(rs.getInt("AreaTech"));
                    item.setComentario(rs.getString("Comentario"));
                    item.setIdSeccion(rs.getString("IdSeccion"));
                    lista.add(item);
                }
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
        return lista;
    }

    public boolean insert(ViviendaBE s) {
        String ins = "Insert into Vivienda values "
                + "(?,?,?,?,?,?,?,?,?)";
        PreparedStatement pst = null;
        Connection cn;
        try {
            cn = getConexion();
            pst = cn.prepareStatement(ins);
            pst.setInt(1, s.getIdVivienda());
            pst.setInt(2, s.getNroVivienda());
            pst.setString(3, s.getTelefono());
            pst.setString(4, s.getEstado());
            pst.setInt(5, s.getPorceParti());
            pst.setInt(6, s.getAreaOcu());
            pst.setInt(7, s.getAreaTech());
            pst.setString(8, s.getComentario());
            pst.setString(9, s.getIdSeccion());
            pst.executeUpdate();
            cn.commit();
            return true;
        } catch (Exception e) {
            e.printStackTrace();
        }
        return false;
    }

    public boolean update(ViviendaBE s) {
        String upd = "update Vivienda "
                + "set NroVivienda = ?,Telefono = ?, Estado = ?, PorceParti = ?, AreaOcu = ?, AreaTech = ?, Comentario = ?, IdSeccion = ? "
                + "where IdVivienda = ?";
        PreparedStatement pst = null;
        Connection cn;
        try {
            cn = getConexion();
            pst = cn.prepareStatement(upd);
            pst.setInt(9, s.getIdVivienda());
            pst.setInt(1, s.getNroVivienda());
            pst.setString(2, s.getTelefono());
            pst.setString(3, s.getEstado());
            pst.setInt(4, s.getPorceParti());
            pst.setInt(5, s.getAreaOcu());
            pst.setInt(6, s.getAreaTech());
            pst.setString(7, s.getComentario());
            pst.setString(8, s.getIdSeccion());
            pst.executeUpdate();
            return true;
        } catch (Exception e) {
            e.printStackTrace();
        }
        return false;
    }

    public boolean delete(String id) {
        String dlt = "delete from Vivienda "
                + "where IdVivienda = ?";
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
