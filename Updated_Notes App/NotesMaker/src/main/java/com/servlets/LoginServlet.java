package com.servlets;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import org.hibernate.Session;
import org.hibernate.Transaction;
import com.entities.User;
import com.helper.FactoryProvider;

public class LoginServlet extends HttpServlet {
    private static final long serialVersionUID = 1L;

    public LoginServlet() {
        super();
    }

    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        try {
            String username = request.getParameter("username");
            String password = request.getParameter("password");
            String email = request.getParameter("email");

            Session session = FactoryProvider.getFactory().openSession();
            Transaction tx = session.beginTransaction();

            // Check if user already exists
            org.hibernate.query.Query<User> query = session.createQuery(
                    "FROM User WHERE username = :username AND password = :password AND email = :email", User.class);
            query.setParameter("username", username);
            query.setParameter("password", password);
            query.setParameter("email", email);
            User user = query.uniqueResult();

            if (user == null) {
                // If user doesn't exist, handle the case (e.g., redirect to login page with error)
                response.sendRedirect("Login.jsp?error=invalid");
                return; // exit from the method
            }

            // Set the user in session
            request.getSession().setAttribute("user", user);

            tx.commit();
            session.close();

            // Redirect to home page after successful login
            response.sendRedirect("index.jsp");
        } catch (Exception e) {
            e.printStackTrace();
            response.sendRedirect("Login.jsp?error=1");
        }
    }
}
