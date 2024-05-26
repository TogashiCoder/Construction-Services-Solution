package dao;

import db.DbConnect;
import model.Resource;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

public class ResourceDAO {
    private Connection connection;

    public ResourceDAO() {
        this.connection = DbConnect.getConnection();
    }

    public void addResource(Resource resource) throws SQLException {
        String query = "INSERT INTO resources (task_id, name, type, quantity, supplier_info) VALUES (?, ?, ?, ?, ?)";
        try (PreparedStatement stmt = connection.prepareStatement(query)) {
            stmt.setInt(1, resource.getTask_id());
            stmt.setString(2, resource.getName());
            stmt.setString(3, resource.getType());
            stmt.setInt(4, resource.getQuantity());
            stmt.setString(5, resource.getSupplierInfo());
            stmt.executeUpdate();
        }
    }

    public List<Resource> getAllResources() throws SQLException {
        List<Resource> resources = new ArrayList<>();
        String query = "SELECT * FROM resources";
        try (PreparedStatement stmt = connection.prepareStatement(query);
             ResultSet rs = stmt.executeQuery()) {
            while (rs.next()) {
                Resource resource = new Resource();
                resource.setId(rs.getInt("id"));
                resource.setTask_id(rs.getInt("task_id"));
                resource.setName(rs.getString("name"));
                resource.setType(rs.getString("type"));
                resource.setQuantity(rs.getInt("quantity"));
                resource.setSupplierInfo(rs.getString("supplier_info"));
                resources.add(resource);
            }
        }
        return resources;
    }

    public List<Resource> getResourcesByTaskId(int taskId) throws SQLException {
        List<Resource> resources = new ArrayList<>();
        String query = "SELECT * FROM resources WHERE task_id = ?";
        try (PreparedStatement stmt = connection.prepareStatement(query)) {
            stmt.setInt(1, taskId);
            try (ResultSet rs = stmt.executeQuery()) {
                while (rs.next()) {
                    Resource resource = new Resource();
                    resource.setId(rs.getInt("id"));
                    resource.setTask_id(rs.getInt("task_id"));
                    resource.setName(rs.getString("name"));
                    resource.setType(rs.getString("type"));
                    resource.setQuantity(rs.getInt("quantity"));
                    resource.setSupplierInfo(rs.getString("supplier_info"));
                    resources.add(resource);
                }
            }
        }
        return resources;
    }

    public Resource getResourceById(int resourceId) throws SQLException {
        Resource resource = null;
        String query = "SELECT * FROM resources WHERE id = ?";
        try (PreparedStatement stmt = connection.prepareStatement(query)) {
            stmt.setInt(1, resourceId);
            try (ResultSet rs = stmt.executeQuery()) {
                if (rs.next()) {
                    resource = new Resource();
                    resource.setId(rs.getInt("id"));
                    resource.setTask_id(rs.getInt("task_id"));
                    resource.setName(rs.getString("name"));
                    resource.setType(rs.getString("type"));
                    resource.setQuantity(rs.getInt("quantity"));
                    resource.setSupplierInfo(rs.getString("supplier_info"));
                }
            }
        }
        return resource;
    }

    public void updateResource(Resource resource) throws SQLException {
        String query = "UPDATE resources SET task_id = ?, name = ?, type = ?, quantity = ?, supplier_info = ? WHERE id = ?";
        try (PreparedStatement stmt = connection.prepareStatement(query)) {
            stmt.setInt(1, resource.getTask_id());
            stmt.setString(2, resource.getName());
            stmt.setString(3, resource.getType());
            stmt.setInt(4, resource.getQuantity());
            stmt.setString(5, resource.getSupplierInfo());
            stmt.setInt(6, resource.getId());
            stmt.executeUpdate();
        }
    }

    public void deleteResource(int resourceId) throws SQLException {
        String query = "DELETE FROM resources WHERE id = ?";
        try (PreparedStatement stmt = connection.prepareStatement(query)) {
            stmt.setInt(1, resourceId);
            stmt.executeUpdate();
        }
    }
}
