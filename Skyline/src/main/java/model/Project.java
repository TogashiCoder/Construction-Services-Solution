package model;

import java.util.Date;
import java.util.List;

public class Project {

    private int id_project;
    private String name;
    private String description;
    private Date prStartDate;
    private Date prEndDate;
    private double budget;
    private List<Task> tasks;


    public Project() {
    }

    public Project(String name, String description, Date prStartDate, Date prEndDate, double budget, List<Task> tasks) {
        this.name = name;
        this.description = description;
        this.prStartDate = prStartDate;
        this.prEndDate = prEndDate;
        this.budget = budget;
        this.tasks = tasks;
    }

    public Project(int id_project, String name, String description, Date prStartDate, Date prEndDate, double budget, List<Task> tasks) {
        this.id_project = id_project;
        this.name = name;
        this.description = description;
        this.prStartDate = prStartDate;
        this.prEndDate = prEndDate;
        this.budget = budget;
        this.tasks = tasks;
    }

    public Project(String name, String description, Date prStartDate, Date prEndDate, double budget) {
        this.name = name;
        this.description = description;
        this.prStartDate = prStartDate;
        this.prEndDate = prEndDate;
        this.budget = budget;
    }


    public int getId_project() {
        return id_project;
    }

    public void setId_project(int id_project) {
        this.id_project = id_project;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getDescription() {
        return description;
    }

    public void setDescription(String description) {
        this.description = description;
    }

    public Date getPrStartDate() {
        return prStartDate;
    }

    public void setPrStartDate(Date prStartDate) {
        this.prStartDate = prStartDate;
    }

    public Date getPrEndDate() {
        return prEndDate;
    }

    public void setPrEndDate(Date prEndDate) {
        this.prEndDate = prEndDate;
    }

    public double getBudget() {
        return budget;
    }

    public void setBudget(double budget) {
        this.budget = budget;
    }

    public List<Task> getTasks() {
        return tasks;
    }

    public void setTasks(List<Task> tasks) {
        this.tasks = tasks;
    }
}
