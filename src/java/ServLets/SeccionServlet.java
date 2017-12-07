/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package ServLets;

import BusinessEntity.SeccionBE;
import BusinessLogic.SeccionBL;
import com.google.gson.Gson;
import com.google.gson.JsonElement;
import com.google.gson.JsonObject;
import com.google.gson.JsonParser;
import java.io.BufferedReader;
import java.io.IOException;
import java.io.PrintWriter;
import java.nio.Buffer;
import java.util.ArrayList;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;



public class SeccionServlet extends HttpServlet {
    //ELIMINAR
    @Override
    protected void doDelete(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        super.doDelete(req, resp); //To change body of generated methods, choose Tools | Templates.
        resp.setContentType("application/json");
        resp.setCharacterEncoding("UTF-8");
        PrintWriter out = resp.getWriter();
        JsonObject jsonResult = new JsonObject();
        try {
            SeccionBL bl = new SeccionBL();
            String id = String.valueOf(req.getParameter("id"));
            jsonResult.addProperty("status", true);
            if(bl.delete(id)){
                jsonResult.addProperty("message", "1 Registro Eliminado");
            }else{
                jsonResult.addProperty("message", "0 Registro Eliminado");
            }
        } catch (Exception e) {
            jsonResult.addProperty("status", false);
             jsonResult.addProperty("message", e.getMessage());
        }
        out.print(jsonResult.toString());
    }
    
    //GUARDAR
    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
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
            SeccionBE be = new Gson().fromJson(jsonRequest, SeccionBE.class);
            SeccionBL bl = new SeccionBL();
            jsonResult.addProperty("status", true);
            if(bl.insert(be)){
                jsonResult.addProperty("message", "1 registro guardado.");
            }else{
                jsonResult.addProperty("message", "0 registro guardado.");
            }
            
        } catch (Exception e) {
            jsonResult.addProperty("status", false);
            jsonResult.addProperty("message", e.getMessage());
        }
        out.print(jsonResult.toString());
    }
    //ACTUALIZAR
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
            SeccionBE be = new Gson().fromJson(jsonRequest, SeccionBE.class);
            SeccionBL bl = new SeccionBL();
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
    
    
    //LISTAR - CONSULTAR
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        resp.setContentType("application/json");
        resp.setCharacterEncoding("UTF-8");
        PrintWriter out = resp.getWriter();
        SeccionBL bl = new SeccionBL();
        ArrayList<SeccionBE> lst = bl.listar("");
        JsonObject jsonResult = new JsonObject();
        JsonElement jsonElement = new Gson().toJsonTree(lst);
        jsonResult.add("datos", jsonElement);
        out.print(jsonResult.toString());
    }
    
    
}


