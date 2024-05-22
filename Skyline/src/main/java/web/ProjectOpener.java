package web;

import dao.ProjectDAO;
import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import model.Project;

import java.io.IOException;
import java.sql.SQLException;
import java.util.List;

@WebServlet("/ShowProject")
public class ProjectOpener extends HttpServlet {



    private ProjectDAO projectDao;
    List intialProjectList;

    private void reinitializeProjectDao() {
        try {
            projectDao =new ProjectDAO();
            intialProjectList = projectDao.getAllProjects();
        } catch (Exception e) {
            throw new RuntimeException(e);
        }
    }




    public void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {


        RequestDispatcher viewProjectList = request.getRequestDispatcher("Projects.jsp");
        reinitializeProjectDao();
        request.setAttribute("projects", intialProjectList);
        viewProjectList.forward(request, response);

    }















}
