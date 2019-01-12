package hms.dtms.model;

import com.fasterxml.jackson.annotation.JsonIgnore;

import javax.persistence.*;
@Entity
@Table(name="event")
public class Events {
    private int eventID;
    private Employee employee;
    private String title;
    private String date;
    private String startTime;
    private String endTime;
    private String description;

    @Id
    @Column(name="eventId")
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    public int getEventID() {
        return eventID;
    }

    public void setEventID(int eventID) {
        this.eventID = eventID;
    }

    @Column(name="title")
    public String getTitle() {
        return title;
    }

    public void setTitle(String title) {
        this.title = title;
    }

    @Column(name="date")
    public String getDate() {
        return date;
    }

    public void setDate(String date) {
        this.date = date;
    }

    @Column(name="startTime")
    public String getStartTime() {
        return startTime;
    }

    public void setStartTime(String startTime) {
        this.startTime = startTime;
    }

    @Column(name="endTime")
    public String getEndTime() {
        return endTime;
    }

    public void setEndTime(String endTime) {
        this.endTime = endTime;
    }
    @Column(name="description")
    public String getDescription() {
        return description;
    }

    public void setDescription(String description) {
        this.description = description;
    }

    @ManyToOne(targetEntity = Employee.class,cascade=CascadeType.ALL,fetch=FetchType.EAGER)
    @JoinColumn(name="employeeId")
    public Employee getEmployee() {
        return employee;
    }

    public void setEmployee(Employee employee) {
        this.employee = employee;
    }
}
