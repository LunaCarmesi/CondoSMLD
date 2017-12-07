package ServLets;

import BusinessEntity.ProveedorBE;
import BusinessLogic.ProveedorBL;
import com.google.gson.Gson;
import com.google.gson.JsonElement;
import com.google.gson.JsonObject;
import com.google.gson.JsonParser;
import java.io.BufferedReader;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class ProveedorServlet extends HttpServlet {

    @Override
    protected void doDelete(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        resp.setContentType("application/json");
        resp.setCharacterEncoding("UTF-8");
        PrintWriter out = resp.getWriter();
        JsonObject jsonResult = new JsonObject();
        try {
            ProveedorBL bl = new ProveedorBL();
            String id = String.valueOf(req.getParameter("id"));
            jsonResult.addProperty("status", true);
            if (bl.delete(id)) {
                jsonResult.addProperty("message", "1 Registro Eliminado");
            } else {
                jsonResult.addProperty("message", "0 Registro Eliminado");
            }
        } catch (Exception e) {
            jsonResult.addProperty("status", false);
            jsonResult.addProperty("message", e.getMessage());
        }
        out.print(jsonResult.toString());
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {        
        PrintWriter out = resp.getWriter();
        JsonObject jsonResult = new JsonObject();
        try {
            StringBuilder sb = new StringBuilder();
            BufferedReader br = req.getReader();
            String str;
            while ((str = br.readLine()) != null) {
                sb.append(str);
            }
            JsonObject jsonRequest = new JsonParser().parse(sb.toString()).getAsJsonObject();
            ProveedorBE be = new Gson().fromJson(jsonRequest, ProveedorBE.class);
            ProveedorBL bl = new ProveedorBL();
            jsonResult.addProperty("status", true);
            if (bl.insert(be)) {
                jsonResult.addProperty("message", "1 Registro guardado.");
            } else {
                jsonResult.addProperty("message", "0 Registro guardado.");
            }

        } catch (Exception e) {
            jsonResult.addProperty("status", false);
            jsonResult.addProperty("message", e.getMessage());
        }
        out.print(jsonResult.toString());
    }

    @Override
    protected void doPut(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        resp.setContentType("application/json");
        resp.setCharacterEncoding("UTF-8");
        PrintWriter out = resp.getWriter();
        JsonObject jsonResult = new JsonObject();
        try {
            StringBuilder sb = new StringBuilder();
            BufferedReader br = req.getReader();
            String str;
            while((str = br.readLine())!=null){
                sb.append(str);
            }
            JsonObject jsonRequest = new JsonParser().parse(sb.toString()).getAsJsonObject();
            ProveedorBE be = new Gson().fromJson(jsonRequest, ProveedorBE.class);
            ProveedorBL bl = new ProveedorBL();
            jsonResult.addProperty("status", true);
            if(bl.update(be)){
                jsonResult.addProperty("message", "Registro Actualizado.");
            }else{
                jsonResult.addProperty("message", "Error al Actualizar registro.");
            }
            
        } catch (Exception e) {
            jsonResult.addProperty("status", false);
            jsonResult.addProperty("message", e.getMessage());
        }
        out.print(jsonResult.toString());
    }
   
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        resp.setContentType("application/json");
        resp.setCharacterEncoding("UTF-8");
        PrintWriter out = resp.getWriter();
        ProveedorBL bl = new ProveedorBL();
        ArrayList<ProveedorBE> lst = bl.listar("");
        JsonObject jsonResult = new JsonObject();
        JsonElement jsonElement = new Gson().toJsonTree(lst);
        jsonResult.add("datos", jsonElement);
        out.print(jsonResult.toString());
    }
}
