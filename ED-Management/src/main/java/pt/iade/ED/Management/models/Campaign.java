package pt.iade.ED.Management.models;

import java.time.LocalDate;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name = "campaign")
public class Campaign {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name = "camp_code")
    private int id;
    @Column(name = "camp_idate")
    private LocalDate idate;
    @Column(name = "camp_fdate")
    private LocalDate fdate;
    @Column(name = "camp_discount")
    private double discount;

    public Campaign() {}

    public int getId() {
        return id;
    } 

    public String getCampaindDate() {
        String dates = "Campaign starts: "+idate+" and ends at "+fdate;
        return dates;
    }

    public double getDiscount() {
        return discount;
    }

    public LocalDate getIdate() {
        return idate;
    }

    public void setIdate(LocalDate idate) {
        this.idate = idate;
    }

    public LocalDate getFdate() {
        return fdate;
    }

    public void setFdate(LocalDate fdate) {
        this.fdate = fdate;
    }

    public void setDiscount(double discount) {
        this.discount = discount;
    }

}
