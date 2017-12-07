/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package ServLets;

import BusinessEntity.CuotasBE;
import BusinessLogic.CuotasBL;
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

/**
 *
 * @author Edwin Vargas
 */
public class CuotasServlet extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        resp.setContentType("application/json");
        resp.setCharacterEncoding("UTF-8");
        PrintWriter out = resp.getWriter();
        CuotasBL bl = new CuotasBL();
        ArrayList<CuotasBE> lst = bl.listar(0);
        JsonObject jsonResult = new JsonObject();
        JsonElement jsonElement = new Gson().toJsonTree(lst);
        jsonResult.add("datos", jsonElement);
        out.print(jsonResult.toString());
    }

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
            CuotasBE be = new Gson().fromJson(jsonRequest, CuotasBE.class);
            CuotasBL bl = new CuotasBL();
            jsonResult.addProperty("status", true);
            if(bl.insert(be)){
                jsonResult.addProperty("message", "Couta Generada con Exito.");
            }else{
                jsonResult.addProperty("message", "Error al generar cuota.");
            }
        } catch (Exception e) {
            jsonResult.addProperty("status", false);
            jsonResult.addProperty("message", e.getMessage());
        }
        out.print(jsonResult.toString());
    }

}
