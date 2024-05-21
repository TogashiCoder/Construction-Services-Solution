package model;

import java.util.Date;
import java.util.List;

public class Task {

    int id_Task;
    private String description;
    private Date startDate;
    private Date endDate;
    private String status; // "to-do", "in-progress", "done"
    private int projectId;
    private List<Resource> resources;


    public Task() {
    }

    public Task(int id_Task, String description, Date startDate, Date endDate, String status, int projectId, List<Resource> resources) {
        this.id_Task = id_Task;
        this.description = description;
        this.startDate = startDate;
        this.endDate = endDate;
        this.status = status;
        this.projectId = projectId;
        this.resources = resources;
    }

    public Task(String description, Date startDate, Date endDate, String status, int projectId, List<Resource> resources) {
        this.description = description;
        this.startDate = startDate;
        this.endDate = endDate;
        this.status = status;
        this.projectId = projectId;
        this.resources = resources;
    }

    public Task(String description, Date startDate, Date endDate, String status, int projectId) {
        this.description = description;
        this.startDate = startDate;
        this.endDate = endDate;
        this.status = status;
        this.projectId = projectId;
    }


    public int getId_Task() {
        return id_Task;
    }

    public void setId_Task(int id_Task) {
        this.id_Task = id_Task;
    }

    public String getDescription() {
        return description;
    }

    public void setDescription(String description) {
        this.description = description;
    }

    public Date getStartDate() {
        return startDate;
    }

    public void setStartDate(Date startDate) {
        this.startDate = startDate;
    }

    public Date getEndDate() {
        return endDate;
    }

    public void setEndDate(Date endDate) {
        this.endDate = endDate;
    }

    public String getStatus() {
        return status;
    }

    public void setStatus(String status) {
        this.status = status;
    }

    public int getProjectId() {
        return projectId;
    }

    public void setProjectId(int projectId) {
        this.projectId = projectId;
    }

    public List<Resource> getResources() {
        return resources;
    }

    public void setResources(List<Resource> resources) {
        this.resources = resources;
    }
}
