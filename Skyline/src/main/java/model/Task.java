package model;

import java.util.Date;
import java.util.List;


public class Task {
    private int id;
    private int projectId;
    private String description;
    private Date startDate;
    private Date endDate;
    private String status;
    private List<Resource> resources;

}