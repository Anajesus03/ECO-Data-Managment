package pt.iade.ED.Management.models;


import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name = "admins")
public class Admin extends User{
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name = "user_id")
    private int id;
    @Column(name = "ad_salary")
    private String salary;

    public Admin() {}

    public int getId() {
        return id;
    }
    public String getSalary() {
        return salary;
    }
}
