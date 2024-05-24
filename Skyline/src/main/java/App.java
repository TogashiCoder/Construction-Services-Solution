package dao;

import db.DbConnect;
import model.Project;
import model.Task;

import java.sql.Connection;
import java.sql.SQLException;
import java.util.Date;
import java.util.List;

public class App {
    public static void main(String[] args) throws SQLException {

         TaskDAO taskDAO = new TaskDAO();
        Task task = new Task();
        task.setId(20);
        task.setProjectId(8);
        task.setDescription("Updated task description");
        task.setStartDate(new Date());
        task.setEndDate(new Date());
        task.setStatus("In Progress");

        System.out.println("before test");
        taskDAO.updateTask(task);
        System.out.println("after test");

    }
}
