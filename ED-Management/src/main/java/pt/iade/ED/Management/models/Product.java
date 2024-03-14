package pt.iade.ED.Management.models;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name = "products")
public class Product {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name = "prod_id")
    private int id;
    @Column(name = "prod_name")
    private String name;
    @Column(name = "prod_price")
    private double price;
    @Column(name = "prod_color")
    private String color;
    @Column(name = "prod_type")
    private String type;

    public Product() {
    }

    public int getId() {
        return id;
    }

    public String getInfo() {
        String info = name+"; "+type+"; "+price+"€; ";
        return info;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public double getPrice() {
        return price;
    }

    public void setPrice(double price) {
        this.price = price;
    }

    public String getColor() {
        return color;
    }

    public void setColor(String color) {
        this.color = color;
    }

    public String getType() {
        return type;
    }

    public void setType(String type) {
        this.type = type;
    }

    
}
