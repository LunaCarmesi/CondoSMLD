
package BusinessLogic;
import BusinessEntity.ProveedorBE;
import Utils.ConexionORACLE;
import java.sql.*;
import java.util.ArrayList;

public class ProveedorBL extends ConexionORACLE {
    //LISTAR
    public ArrayList<ProveedorBE> listar(String id) {
        ArrayList<ProveedorBE> lista = null;
        String select = "SELECT * FROM Proveedor WHERE IdProveedor = DECODE('" + id + "','', IdProveedor, '" + id + "')";
        try {
            Statement stm = getConexion().createStatement();
            stm.executeQuery(select);
            ResultSet rs = stm.getResultSet();
            if (rs != null) {
                lista = new ArrayList<ProveedorBE>();
                lista.clear();
                while (rs.next()) {
                    ProveedorBE item = new ProveedorBE();
                    item.setIdProveedor(rs.getInt("IdProveedor"));
                    item.setDescripcion(rs.getString("Descripcion"));
                    item.setNombre(rs.getString("Nombre"));
                    item.setDireccion(rs.getString("Direccion"));
                    item.setTelefono(rs.getString("Telefono"));
                    item.setEmail(rs.getString("Email"));
                    item.setPaginaWeb(rs.getString("PaginaWeb"));
                    lista.add(item);
                }
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
        return lista;
    }
     public boolean insert(ProveedorBE s) {
        String ins = "Insert into Proveedor values" + "(?,?,?,?,?,?,?)";
        PreparedStatement pst = null;
        Connection cn;
        try {
            cn = getConexion();
            pst = cn.prepareStatement(ins);
            pst.setInt(1, s.getIdProveedor());
            pst.setString(2, s.getDescripcion());
            pst.setString(3, s.getNombre());
            pst.setString(4, s.getDireccion());
            pst.setString(5, s.getTelefono());
            pst.setString(6, s.getEmail());
            pst.setString(7, s.getPaginaWeb());
            pst.executeUpdate();
            cn.commit();
        } catch (Exception e) {
            e.printStackTrace();
        }
        return false;
    }
    public boolean update(ProveedorBE s){
        String upd = "update Proveedor "
                + "set Descripcion = ?, Nombre = ?, Direccion = ?, Telefono = ?, Email = ?, PaginaWeb = ? "
                + "where IdProveedor = ?";
        PreparedStatement pst =null;
        Connection cn;
        try {
            cn=getConexion();
            pst = cn.prepareStatement(upd);
            pst.setInt(7, s.getIdProveedor());
            pst.setString(1, s.getDescripcion());
            pst.setString(2, s.getNombre());
            pst.setString(3, s.getDireccion());
            pst.setString(4, s.getTelefono());
            pst.setString(5, s.getEmail());
            pst.setString(6, s.getPaginaWeb());
            pst.executeUpdate();
            return true;
        } catch (Exception e) {
            e.printStackTrace();
        }
        return false;
    }
        public boolean delete(String id){
        String dlt="delete from Proveedor "
                + "where IdProveedor = ?";
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


