package ua.goit.servlets;

import javax.servlet.ServletException;
import javax.servlet.ServletRequest;
import javax.servlet.ServletResponse;
import javax.servlet.http.HttpServlet;
import java.io.IOException;
import java.io.PrintWriter;

/**
 * Created by user on 9/30/2016.
 */
public class ServletLifecycleExample extends HttpServlet {
    @Override
    public void service(ServletRequest request, ServletResponse response)
            throws ServletException, IOException {

        // the service method will
        response.setContentType("text/html");

        PrintWriter out = response.getWriter();
        out.println("Servlet called from jsp page!");
    }

}
