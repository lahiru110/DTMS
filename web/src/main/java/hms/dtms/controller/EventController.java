package hms.dtms.controller;

import hms.dtms.model.Employee;
import hms.dtms.model.Events;
import hms.dtms.service.EventService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.servlet.http.HttpSession;
import java.util.List;

@Controller
@RequestMapping("/EventController")
public class EventController {

    @Autowired
    private EventService eventServices;


    @RequestMapping(value="/eventlist",method= RequestMethod.GET)
    @ResponseBody
    public List<Events> viewEventList(){
        List<Events> eventList = eventServices.viewList();

        return eventList;

    }

    @RequestMapping(value = "/addNewEvent")
    @ResponseBody
    public String  addNewEvent(@RequestBody Events event,HttpSession session){

        System.out.print("title"+event.getTitle());
        System.out.print("startTime"+event.getStartTime());
        System.out.print("endTime"+event.getEndTime());
        System.out.print("date"+event.getDate());
        event.setEmployee((Employee)session.getAttribute("user"));
        if(eventServices.addEvent(event)) {
            return "Successfully added the new Event";
        }
        else{
            return "Error please re-enter";
        }

    }
    @RequestMapping(value="/todayEventlist",method= RequestMethod.GET)
    @ResponseBody
    public List<Events> viewTodayEventList(){
        List<Events> todayEventList = eventServices.viewEventDetails();

        return todayEventList;

    }
}
