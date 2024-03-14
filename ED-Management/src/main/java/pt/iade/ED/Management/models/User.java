package pt.iade.ED.Management.models;

import java.io.Serializable;
import java.time.LocalDate;
import java.time.Period;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Inheritance;
import javax.persistence.InheritanceType;
import javax.persistence.Table;


@Entity
@Inheritance(strategy = InheritanceType.JOINED)
@Table(name = "Users")
public class User implements Serializable{
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name = "user_id")
    private int id;
    @Column(name = "user_Fname")
    private String fname;
    @Column(name = "user_Lname")
    private String lname;
    @Column(name = "user_phone")
    private String phone;
    @Column(name = "user_birthd")
    private LocalDate birthdate;

    public User() {}

    public int getId() {
        return id;
    } 
    public String getName() {
        String name = fname+' '+lname;
        return name;
    }
    public String getPhone() {
        return phone;
    }

    public int getAge() {
        LocalDate now = LocalDate.now();
        return Period.between(birthdate, now).getYears();
    }

}
