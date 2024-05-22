package dao;

import db.DbConnect;
import model.Project;
import java.sql.Connection;
import java.sql.SQLException;
import java.util.Date;
import java.util.List;

public class App {
    public static void main(String[] args) throws SQLException {

            ProjectDAO projectDAO = new ProjectDAO();

                projectDAO.deleteProject(3);
                System.out.println("Project deleted successfully!");



    }
}
