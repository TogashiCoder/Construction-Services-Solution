package security;

import db.DbConnect;
import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

@WebServlet("/checker")
public class authentication extends HttpServlet {


    private Connection connection;
    boolean canPass = false;
    RequestDispatcher requestDispatcher = null;



    @Override
    public void init() throws ServletException {
        try {
            connection = DbConnect.getConnection();
        } catch (Exception e) {
            System.err.println("Error creating MemberDao: " + e.getMessage());
        }
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

        String query = "SELECT * FROM admin WHERE username = ? AND password = ?";
        String userName = request.getParameter("username");
        String passWord = request.getParameter("password");
        //check the username and password from the jsp



        try (PreparedStatement preparedStatement = connection.prepareStatement(query)) {
            preparedStatement.setString(1,userName);
            preparedStatement.setString(2,passWord);
            ResultSet rs = preparedStatement.executeQuery();
            RequestDispatcher requestDispatcher = null;
            if(rs.next())
            {
                canPass =true;
                request.getSession().setAttribute("authentication",canPass);
                request.getSession().setAttribute("userName",userName);
                requestDispatcher =request.getRequestDispatcher("dashboard.jsp");
            }
            else
            {
                System.out.println("Invalid username or password");
                requestDispatcher =request.getRequestDispatcher("login.jsp");
            }


            requestDispatcher.forward(request,response);
        } catch (SQLException e) {
            System.out.println(e.getMessage());
        }
    }


    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

        requestDispatcher =request.getRequestDispatcher("login.jsp");
        requestDispatcher.include(request,response);



    }
}


