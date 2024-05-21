package dao;

import model.Project;

import java.sql.*;
import java.util.*;

public class ProjectDAO {
    private Connection connection;

    public ProjectDAO(Connection connection) {
        this.connection = connection;
    }

    public void addProject(Project project) throws SQLException {
        String query = "INSERT INTO projects (name, description, startDate, endDate, budget) VALUES (?, ?, ?, ?, ?)";
        try (PreparedStatement statement = connection.prepareStatement(query)) {
            statement.setString(1, project.getName());
            statement.setString(2, project.getDescription());
            statement.setDate(3, new java.sql.Date(project.getStartDate().getTime()));
            statement.setDate(4, new java.sql.Date(project.getEndDate().getTime()));
            statement.setDouble(5, project.getBudget());
            statement.executeUpdate();
        }
    }

    public List<Project> getAllProjects() throws SQLException {
        List<Project> projects = new ArrayList<>();
        String query = "SELECT * FROM projects";
        try (Statement statement = connection.createStatement()) {
            ResultSet resultSet = statement.executeQuery(query);
            while (resultSet.next()) {
                Project project = new Project();
                project.setId(resultSet.getInt("id"));
                project.setName(resultSet.getString("name"));
                project.setDescription(resultSet.getString("description"));
                project.setStartDate(resultSet.getDate("startDate"));
                project.setEndDate(resultSet.getDate("endDate"));
                project.setBudget(resultSet.getDouble("budget"));
                projects.add(project);
            }
        }
        return projects;
    }

    public void updateProject(Project project) throws SQLException {
        String query = "UPDATE projects SET name = ?, description = ?, startDate = ?, endDate = ?, budget = ? WHERE id = ?";
        try (PreparedStatement statement = connection.prepareStatement(query)) {
            statement.setString(1, project.getName());
            statement.setString(2, project.getDescription());
            statement.setDate(3, new java.sql.Date(project.getStartDate().getTime()));
            statement.setDate(4, new java.sql.Date(project.getEndDate().getTime()));
            statement.setDouble(5, project.getBudget());
            statement.setInt(6, project.getId());
            statement.executeUpdate();
        }
    }

    public void deleteProject(int projectId) throws SQLException {
        String query = "DELETE FROM projects WHERE id = ?";
        try (PreparedStatement statement = connection.prepareStatement(query)) {
            statement.setInt(1, projectId);
            statement.executeUpdate();
        }
    }
}

