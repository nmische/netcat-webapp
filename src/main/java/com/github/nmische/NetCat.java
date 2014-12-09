package com.github.nmische;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;


public class NetCat extends HttpServlet{

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

        String host = req.getParameter("host");
        String port = req.getParameter("port");

        String command = "nc -v -z -w 1 " + host + " " + port;

        System.out.println(command);

        ShellCommand obj = new ShellCommand();
        String output = obj.executeCommand(command);
        System.out.println(output);

        req.setAttribute("ncOutput",output);

        getServletContext().getRequestDispatcher("/index.jsp").forward(req,resp);

    }

}
