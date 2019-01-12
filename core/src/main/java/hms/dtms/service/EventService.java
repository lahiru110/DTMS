package hms.dtms.service;

import hms.dtms.dao.EventDao;
import hms.dtms.model.Events;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.sql.SQLException;
import java.util.List;

@Service
public class EventService {


    @Autowired
    private EventDao eventDao;

    @Transactional
    public List<Events> viewList() {
        List<Events> eventlist = null;
        try {
            eventlist = eventDao.viewEventList();
        } catch (SQLException sl) {
            sl.printStackTrace();
        } catch (ClassNotFoundException cls) {
            cls.printStackTrace();
        }
        return eventlist;
    }

    @Transactional
    public List<Events> viewEventDetails() {
        long millis=System.currentTimeMillis();
        java.sql.Date date=new java.sql.Date(millis);
        Events event = new Events();
        event.setDate( date.toString());
        List<Events> todayEventlist = null;
        try {
            todayEventlist = eventDao.eventDetails(event);
        } catch (SQLException sl) {
            sl.printStackTrace();
        } catch (ClassNotFoundException cls) {
            cls.printStackTrace();
        }
        return todayEventlist;
    }


    @Transactional
    public boolean addEvent(Events event) {
        boolean status = false;

        try {

            if (eventDao.addEventData(event)) {

                status = true;
            } else {
                status = false;
                System.out.println("condition-status:" + status);
            }
        } catch (SQLException sq) {
            sq.printStackTrace();
        } catch (ClassNotFoundException cls) {
            cls.printStackTrace();
        }
        System.out.println("return-status:" + status);
        return status;


    }
}