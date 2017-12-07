/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package ServLets;

import BusinessEntity.ClasePresupuestalBE;
import BusinessLogic.ClasePresupuestalBL;
import com.google.gson.Gson;
import com.google.gson.JsonElement;
import com.google.gson.JsonObject;
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

public class ClasePresupuestalServlet extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        resp.setContentType("application/json");
        resp.setCharacterEncoding("UTF-8");
        PrintWriter out = resp.getWriter();
        ClasePresupuestalBL bl = new ClasePresupuestalBL();
        ArrayList<ClasePresupuestalBE> lst = bl.listar("i");
        JsonObject jsonResult = new JsonObject();
        JsonElement jsonElement = new Gson().toJsonTree(lst);
        jsonResult.add("clasepre", jsonElement);
        out.print(jsonResult.toString());      
    }

}
