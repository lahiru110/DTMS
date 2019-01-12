package hms.dtms.model;

import org.hibernate.annotations.Fetch;
import org.hibernate.annotations.FetchMode;
import org.hibernate.proxy.LazyInitializer;

import javax.persistence.*;
import java.util.List;


@Entity
@Table(name="employee")
public class Employee {


    private int employeeId;

    private String firstname;


    private String surname;


    private String email;


    private String password;


    private String designation;


    private String role;




    @Column(name="firstname")
    public String getFirstname() {
        return firstname;
    }

    public void setFirstname(String firstname) {
        this.firstname = firstname;
    }
    @Column(name="surname")
    public String getSurname() {
        return surname;
    }

    public void setSurname(String surname) {
        this.surname = surname;
    }
    @Column(name="email")
    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }
    @Column(name="password")
    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }
    @Column(name="designation")
    public String getDesignation() {
        return designation;
    }

    public void setDesignation(String designation) {
        this.designation = designation;
    }
    @Column(name="role")
    public String getRole() {
        return role;
    }

    public void setRole(String role) {
        this.role = role;
    }

    @Id
    @Column(name="employeeId")
    @GeneratedValue(strategy =GenerationType.IDENTITY)
    public int getEmployeeId() {
        return employeeId;
    }

    public void setEmployeeId(int employeeId) {
        this.employeeId = employeeId;
    }


}
