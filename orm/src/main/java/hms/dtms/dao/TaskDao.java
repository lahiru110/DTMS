package hms.dtms.dao;

import hms.dtms.model.Tasks;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import java.sql.SQLException;
import java.util.Iterator;
import java.util.List;


@Repository
public class TaskDao {

    @Autowired
    private SessionFactory sessionFactory;




    public void setSessionFactory(SessionFactory sf){
        this.sessionFactory = sf;
    }

    @Autowired
    private Tasks task;


   /* public boolean checklogin(Employee employee)throws SQLException, ClassNotFoundException{
        boolean status=false;
        System.out.println("employee email:"+employee.getEmail());
        System.out.println("employee pass:"+employee.getPassword());
        Session session = this.sessionFactory.openSession();
        Transaction transaction = session.beginTransaction();
        List<Employee> results = session.createQuery("FROM Employee e WHERE e.email='"+employee.getEmail()+"' AND e.password='"+employee.getPassword()+"'",Employee.class).list();

        if(!results.isEmpty()){
            status=true;

        }

        //transaction.commit();
        // session.flush();
        // session.close();
        return status;
    }*/

    public List<Tasks> viewTaskList()throws SQLException, ClassNotFoundException{

        Session session = this.sessionFactory.openSession();
        Transaction transaction = session.beginTransaction();


        List<Tasks> taskList = session.createQuery("FROM Tasks t",Tasks.class).list();
        if(taskList!=null){
            System.out.println("Task list not null");

        }
        Iterator<Tasks> iterator = taskList.iterator();
        while(iterator.hasNext()){
            Tasks task = iterator.next();
            System.out.println("iteraor" +task.getDate()+"/n");
            System.out.println("iteraor" +task.getDescription()+"/n");
            System.out.println("iteraor" +task.getTask()+"/n");
            System.out.println("iteraor" +task.getTaskID()+"/n");
            System.out.println("iteraor" +task.getUpdatedTime()+"/n");
            System.out.println("iteraor" +task.getEmployee().getFirstname()+"/n");
        }
        return taskList;
    }





    public List<Tasks> taskDetails(Tasks task)throws SQLException, ClassNotFoundException{
        boolean status=false;
        System.out.println("employee email:"+task.getDate());
        //System.out.println("employee pass:"+task.getEmployeeID());
        Session session = this.sessionFactory.openSession();
        Transaction transaction = session.beginTransaction();
        System.out.println("Task employee:"+task.getEmployee().getFirstname());
        System.out.println("Task employee:"+task.getEmployee().getEmployeeId());
        List<Tasks> taskDetails = session.createQuery("FROM Tasks t WHERE t.employee='"+task.getEmployee().getEmployeeId()+"'",Tasks.class).list();

        Iterator<Tasks> iterator = taskDetails.iterator();
        while(iterator.hasNext()){
            Tasks tasks = iterator.next();
            System.out.println("iteraor" +tasks.getDate()+"/n");
            System.out.println("iteraor" +tasks.getDescription()+"/n");
            System.out.println("iteraor" +tasks.getEmployee().getFirstname()+"/n");

        }
        if(taskDetails==null){System.out.println("my task list is null");}
        else{System.out.println("my task list is null");}
        //transaction.commit();
        // session.flush();
        // session.close();
        return taskDetails;
    }



    public boolean addTaskData(Tasks task)throws SQLException,ClassNotFoundException{
        boolean status=false;
        Session session = this.sessionFactory.getCurrentSession();

        //  Transaction transaction =  session.beginTransaction();

        int id =(Integer)session.save(task);
        System.out.println("Inserting a new record");
        if(id!=0){
            status=true;
        }
    /*if(transaction!=null) {
        session.save(employee);
        status = true;
    } */
        return status;
    }
}


