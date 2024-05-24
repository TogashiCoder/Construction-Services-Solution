package web;

import dao.ProjectDAO;
import dao.TaskDAO;
import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import model.Project;
import model.Task;
import services.DateCasting;

import java.io.IOException;
import java.sql.SQLException;
import java.util.Date;
import java.util.List;

@WebServlet("/Tasks")
public class TaskManagement extends HttpServlet {




    private TaskDAO taskDAO;
    Task task;
    Project project;
    ProjectDAO projectDAO;
    List intialTasksList;

    public void init() {
        taskDAO = new TaskDAO();
        projectDAO = new ProjectDAO();
    }
    private void reinitializeTaskDao(int id) {
        try {
            intialTasksList = taskDAO.getAllTasks(id);
        } catch (Exception e) {
            throw new RuntimeException(e);
        }
    }
    private void reinitializeTaskDao() {
        try {
            intialTasksList = taskDAO.getAllTasks();
        } catch (Exception e) {
            throw new RuntimeException(e);
        }
    }


    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String action = request.getParameter("action");
        int projectId = Integer.parseInt(request.getParameter("ProjectId"));
        String description = request.getParameter("description");
        String startDate = request.getParameter("startDate");
        String endDate = request.getParameter("endDate");
        String status = request.getParameter("status");

        switch (action) {
            case "AddTask":
                task = new Task(projectId,description,DateCasting.convertStringToDate(startDate, "yyyy-MM-dd"), DateCasting.convertStringToDate(startDate, "yyyy-MM-dd"), status);
                try {
                    taskDAO.addTask(task);
                    RequestDispatcher viewTasksList = request.getRequestDispatcher("Tasks.jsp");
                    reinitializeTaskDao(projectId);
                    project = projectDAO.getProjectById(projectId);
                    request.setAttribute("project",project);
                    request.setAttribute("tasks", intialTasksList);
                    viewTasksList.forward(request, response);
                } catch (SQLException e) {
                    throw new RuntimeException(e);
                }
                break;
            case "AddToUpdate":
                int id_task = Integer.parseInt(request.getParameter("Task_ID"));
                task = new Task();
                task.setId(id_task);
                task.setProjectId(projectId);
                task.setDescription(description);
                task.setStartDate(DateCasting.convertStringToDate(startDate, "yyyy-MM-dd"));
                task.setEndDate(DateCasting.convertStringToDate(endDate, "yyyy-MM-dd"));
                task.setStatus(status);
                try {
                    taskDAO.updateTask(task);
                    RequestDispatcher viewTasksList = request.getRequestDispatcher("Tasks.jsp");
                    reinitializeTaskDao(projectId);
                    project = projectDAO.getProjectById(projectId);
                    request.setAttribute("project",project);
                    request.setAttribute("tasks", intialTasksList);
                    viewTasksList.forward(request, response);
                } catch (SQLException e) {
                    throw new RuntimeException(e);
                }
                break;
        }
    }


    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

        int id = Integer.parseInt(request.getParameter("TheProjectId"));
        String action = request.getParameter("action");
        int task_id;
        switch (action) {
            case "delete":
                 task_id = Integer.parseInt(request.getParameter("TheTaskId"));
                try {
                    taskDAO.deleteTask(task_id);
                } catch (SQLException e) {
                    throw new RuntimeException(e);
                }
                RequestDispatcher SHOWAFTER = request.getRequestDispatcher("Tasks.jsp");
                try {
                    project = projectDAO.getProjectById(id);
                    request.setAttribute("project",project);
                    intialTasksList = taskDAO.getAllTasks(id);
                    request.setAttribute("tasks",intialTasksList);
                    SHOWAFTER.forward(request,response);
                } catch (SQLException e) {
                    throw new RuntimeException(e);
                }

                break;
            case "update":
                task_id = Integer.parseInt(request.getParameter("TheTaskId"));
                try {
                    request.getServletContext().setAttribute("showUpdateTask", taskDAO.getTaskById(task_id));
                    response.sendRedirect("UpdateTaskForm.jsp?task_id=" + task_id);
                } catch (SQLException e) {
                    throw new RuntimeException(e);
                }
                break;
            case "display":
                    ProjectDAO  projectDAO = new ProjectDAO();
                try {
                    Project project = projectDAO.getProjectById(id);
                    request.setAttribute("project",project);
                } catch (SQLException e) {
                    throw new RuntimeException(e);
                }
                RequestDispatcher viewTasksList = request.getRequestDispatcher("Tasks.jsp");
                    reinitializeTaskDao(id);
                    request.setAttribute("tasks", intialTasksList);
                    viewTasksList.forward(request, response);

                break;

        }
    }
}












