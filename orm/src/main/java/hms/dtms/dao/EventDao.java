package hms.dtms.dao;

import hms.dtms.model.Events;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import java.sql.SQLException;
import java.util.Iterator;
import java.util.List;

@Repository
public class EventDao {
    @Autowired
    private SessionFactory sessionFactory;




    public void setSessionFactory(SessionFactory sf){
        this.sessionFactory = sf;
    }

    @Autowired
    private Events event;

    public List<Events> viewEventList()throws SQLException, ClassNotFoundException{

        Session session = this.sessionFactory.openSession();
        Transaction transaction = session.beginTransaction();


        List<Events> eventList = session.createQuery("FROM Events e",Events.class).list();
        if(eventList!=null){
            System.out.println("Task list not null");

        }
        Iterator<Events> iterator = eventList.iterator();
        while(iterator.hasNext()){
            Events event = iterator.next();
            System.out.println("iteraor" +event.getDate()+"/n");
            System.out.println("iteraor" +event.getDescription()+"/n");
            System.out.println("iteraor" +event.getTitle()+"/n");
            System.out.println("iteraor" +event.getStartTime()+"/n");
            System.out.println("iteraor" +event.getEndTime()+"/n");
            System.out.println("iteraor" +event.getEmployee().getFirstname()+"/n");
        }
        return eventList;
    }





    public List<Events> eventDetails(Events event)throws SQLException, ClassNotFoundException{
        boolean status=false;
        System.out.println("employee email:"+event.getDate());
        //System.out.println("employee pass:"+task.getEmployeeID());
        Session session = this.sessionFactory.openSession();
        Transaction transaction = session.beginTransaction();
        List<Events> taskDetails = session.createQuery("FROM Events e WHERE e.date='"+event.getDate()+"'",Events.class).list();



        //transaction.commit();
        // session.flush();
        // session.close();
        return taskDetails;
    }



    public boolean addEventData(Events event)throws SQLException,ClassNotFoundException{
        boolean status=false;
        Session session = this.sessionFactory.getCurrentSession();

        //  Transaction transaction =  session.beginTransaction();
        System.out.println("Event date"+event.getDate());
        System.out.print("Event endTime"+event.getEndTime());
        int id =(Integer)session.save(event);
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

