package servlets;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author super
 */
public class HelloWorldServlet extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        getServletContext().getRequestDispatcher("/WEB-INF/helloWorldForm.jsp")
                .forward(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        //Retrieving what the user input into the text boxes for their name
        //And passing it to a new variable to be used within the JSP
        String firstname = request.getParameter("firstname");
        String lastname = request.getParameter("lastname");
        request.setAttribute("firstname", firstname);
        request.setAttribute("lastname", lastname);

        if (firstname == null || firstname.equals("") || lastname == null || lastname.equals("")) {

            request.setAttribute("message", "Invalid entry, please enter your first and last name");
            
            getServletContext().getRequestDispatcher("/WEB-INF/helloWorldForm.jsp")
                    .forward(request, response);
            
            
            return;

        }

        getServletContext().getRequestDispatcher("/WEB-INF/sayHello.jsp")
                .forward(request, response);

    }

}
