package model;

import java.util.List;

public class Resource {

    int id_resource;
    private String name;
    private String type;
    private int quantity;
    private String supplierInfo;

    public Resource() {
    }

    public Resource(String name, String type, int quantity, String supplierInfo) {
        this.name = name;
        this.type = type;
        this.quantity = quantity;
        this.supplierInfo = supplierInfo;
    }

    public Resource(int id_resource, String name, String type, int quantity, String supplierInfo) {
        this.id_resource = id_resource;
        this.name = name;
        this.type = type;
        this.quantity = quantity;
        this.supplierInfo = supplierInfo;
    }

    public int getId_resource() {
        return id_resource;
    }

    public void setId_resource(int id_resource) {
        this.id_resource = id_resource;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getType() {
        return type;
    }

    public void setType(String type) {
        this.type = type;
    }

    public int getQuantity() {
        return quantity;
    }

    public void setQuantity(int quantity) {
        this.quantity = quantity;
    }

    public String getSupplierInfo() {
        return supplierInfo;
    }

    public void setSupplierInfo(String supplierInfo) {
        this.supplierInfo = supplierInfo;
    }
}
