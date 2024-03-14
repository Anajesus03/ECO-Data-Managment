package pt.iade.ED.Management.models;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;



@Entity
@Table(name = "clients")
public class Client extends User{
    
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name = "user_id")
    private int id;
    @Column(name = "user_Fname")
    private String fname;
    @Column(name = "user_Lname")
    private String lname;
    @Column(name = "cli_NIF")
    private String NIF;

    public Client() {}

    public int getId() {
        return id;
    } 

    public String getName() {
        String fullname = fname+" "+lname;
        return fullname;
    }

}
