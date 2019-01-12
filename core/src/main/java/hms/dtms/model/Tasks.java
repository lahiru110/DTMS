package hms.dtms.model;

import com.fasterxml.jackson.annotation.JsonIgnore;

import javax.persistence.*;
import java.util.Date;

@Entity
@Table(name="task")
public class Tasks{

    private int taskID;

    private Employee employee;

    private String task;

    private int spentHours;

    private String description;

    private String date;

    private String updatedTime;

    @Id
    @Column(name="taskid")
    @GeneratedValue(strategy =GenerationType.IDENTITY)
    public int getTaskID() {
        return taskID;
    }

    public void setTaskID(int taskID) {
        this.taskID = taskID;
    }
    @Column(name="task")
    public String getTask() {
        return task;
    }

    public void setTask(String task) {
        this.task = task;
    }
    @Column(name="spenthours")
    public int getSpentHours() {
        return spentHours;
    }

    public void setSpentHours(int spentHours) {
        this.spentHours = spentHours;
    }
    @Column(name="description")
    public String getDescription() {
        return description;
    }

    public void setDescription(String description) {
        this.description = description;
    }
    @Column(name="updateTime")
    public String getUpdatedTime() {
        return updatedTime;
    }

    public void setUpdatedTime(String updatedTime) {
        this.updatedTime = updatedTime;
    }

    @Column(name="date")
    public String getDate() {
        return date;
    }

    public void setDate(String date) {
        this.date = date;
    }
    @ManyToOne(targetEntity = Employee.class,cascade=CascadeType.ALL,fetch=FetchType.EAGER)
    @JoinColumn(name="employeeId")
    public Employee getEmployee() {
        return employee;
    }

    public void setEmployee(Employee employee) {
        this.employee = employee;
    }
    @Override
    public String toString() {
        return "taskId="+taskID+"task="+task+",spenthours="+spentHours+",description="+description+",updateTime="+updatedTime+",date="+date;
    }

}