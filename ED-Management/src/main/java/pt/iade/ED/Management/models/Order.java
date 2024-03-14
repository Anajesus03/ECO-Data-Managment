package pt.iade.ED.Management.models;

import java.time.LocalDate;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;



@Entity
@Table(name = "orders")
public class Order {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name = "ord_id")
    private int id;
    @Column(name = "user_id")
    private int user;
    @Column(name = "ord_totprice")
    private Float value;
    @Column(name = "ord_state")
    private String state;
    @Column(name = "ord_date")
    private LocalDate ordDate;
    @Column(name = "prod_id")
    private String product;
    @Column(name = "prod_qtd")
    private int qtd;

    public Order() {
    }

    public int getId() {
        return id;
    }

    public Float getCost() {
        return value;
    }

    public String getOrderInfo() {
        String info = "Ordered at "+ordDate;
        return info;
    }

    public int getUser() {
        return user;
    }

    public void setUser(int user) {
        this.user = user;
    }

    public Float getValue() {
        return value;
    }

    public void setValue(Float value) {
        this.value = value;
    }

    public String getState() {
        return state;
    }

    public void setState(String state) {
        this.state = state;
    }

    public LocalDate getOrdDate() {
        return ordDate;
    }

    public void setOrdDate(LocalDate ordDate) {
        this.ordDate = ordDate;
    }

    public String getProduct() {
        return product;
    }

    public void setProduct(String product) {
        this.product = product;
    }

    public int getQtd() {
        return qtd;
    }

    public void setQtd(int qtd) {
        this.qtd = qtd;
    }


    

}
