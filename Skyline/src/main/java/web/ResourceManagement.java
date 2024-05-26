package web;


import dao.ProjectDAO;
import dao.ResourceDAO;
import dao.TaskDAO;
import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import model.Project;
import model.Resource;
import model.Task;
import services.DateCasting;

import java.io.IOException;
import java.sql.SQLException;
import java.util.List;


@WebServlet("/resourceServ")
public class ResourceManagement extends HttpServlet {




    ResourceDAO resourceDAO;
    TaskDAO taskDAO;
    Task task;
    Resource resource;
    List intialResourceList;

    public void init() {
        taskDAO = new TaskDAO();
        resourceDAO = new ResourceDAO();
    }

    private void reinitializeResourceDao(int id) {
        try {
            intialResourceList = resourceDAO.getResourcesByTaskId(id);
        } catch (Exception e) {
            throw new RuntimeException(e);
        }
    }
    private void reinitializeResourceDao() {
        try {
            intialResourceList = resourceDAO.getAllResources();
        } catch (Exception e) {
            throw new RuntimeException(e);
        }
    }




    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
            String action = request.getParameter("action");
            int TaskId = Integer.parseInt(request.getParameter("TaskId"));
            String name = request.getParameter("name");
            String type = request.getParameter("type");
            int quantity = Integer.parseInt(request.getParameter("quantity"));
            String supplierInfo = request.getParameter("supplierInfo");

        switch (action) {
            case "AddResource":
               resource = new Resource(TaskId,name,type,quantity,supplierInfo);
                try {
                    resourceDAO.addResource(resource);
                    RequestDispatcher viewResourceList = request.getRequestDispatcher("resource.jsp");
                    reinitializeResourceDao(TaskId);
                    task = taskDAO.getTaskById(TaskId);
                    request.setAttribute("task",task);
                    request.setAttribute("resources", intialResourceList);
                    viewResourceList.forward(request, response);
                } catch (SQLException e) {
                    throw new RuntimeException(e);
                }
                break;
            case "AddToUpdate":
                int resource_id = Integer.parseInt(request.getParameter("ResourceId"));
                resource = new Resource();
                resource.setId(resource_id);
                resource.setName(name);
                resource.setType(type);
                resource.setQuantity(quantity);
                resource.setTask_id(TaskId);
                resource.setSupplierInfo(supplierInfo);
                try {
                    resourceDAO.updateResource(resource);
                    RequestDispatcher viewResourceList = request.getRequestDispatcher("resource.jsp");
                    reinitializeResourceDao(TaskId);
                    task = taskDAO.getTaskById(TaskId);
                    request.setAttribute("task",task);
                    request.setAttribute("resources", intialResourceList);
                    viewResourceList.forward(request, response);
                } catch (SQLException e) {
                    throw new RuntimeException(e);
                }
                break;
        }
    }






    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

        int id = Integer.parseInt(request.getParameter("TheTaskId"));
        String action = request.getParameter("action");
        int resource_id;
        switch (action) {
            case "delete":
                resource_id = Integer.parseInt(request.getParameter("TheResource"));
                try {
                    resourceDAO.deleteResource(resource_id);
                    RequestDispatcher viewResourceList = request.getRequestDispatcher("resource.jsp");
                    reinitializeResourceDao(id);
                    task = taskDAO.getTaskById(id);
                    request.setAttribute("task",task);
                    request.setAttribute("resources", intialResourceList);
                    viewResourceList.forward(request, response);
                } catch (SQLException e) {
                    throw new RuntimeException(e);
                }

                break;
            case "update":
                int TheResource_Id = Integer.parseInt(request.getParameter("TheResourceID"));
                try {
                    request.getServletContext().setAttribute("showUpdateResource", resourceDAO.getResourceById(TheResource_Id));
                    response.sendRedirect("UpdateResource.jsp?TheResourceID=" + TheResource_Id + "&Task_id=" + id);

                } catch (SQLException e) {
                    throw new RuntimeException(e);
                }
                break;
            case "display":
                ProjectDAO  projectDAO = new ProjectDAO();
                try {
                    Task task = taskDAO.getTaskById(id);
                    request.setAttribute("task",task);
                } catch (SQLException e) {
                    throw new RuntimeException(e);
                }
                RequestDispatcher viewResourceList = request.getRequestDispatcher("resource.jsp");
                reinitializeResourceDao(id);
                request.setAttribute("resources", intialResourceList);
                viewResourceList.forward(request, response);

                break;

        }
    }










}

