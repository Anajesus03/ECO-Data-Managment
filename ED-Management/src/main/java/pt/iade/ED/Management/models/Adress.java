package pt.iade.ED.Management.models;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name = "clients")
public class Adress {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name = "user_id")
    private int id;
    @Column(name = "ad_distric")
    private String distric;
    @Column(name = "ad_city")
    private String city;
    @Column(name = "ad_streetname")
    private String streetname;
    @Column(name = "ad_zip4d")
    private String zip4D;
    @Column(name = "ad_zip3d")
    private String zip3D;

    public Adress(){}

    public String getAdress(){
        String adress = distric+" "+city+" "+streetname+" "+zip4D+" - "+zip3D;
        return adress;
    }
}
