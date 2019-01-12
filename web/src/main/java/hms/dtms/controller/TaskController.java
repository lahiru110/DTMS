package hms.dtms.controller;


import hms.dtms.model.Employee;
import hms.dtms.model.Tasks;
import hms.dtms.service.TaskService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.servlet.http.HttpSession;
import java.util.List;

@Controller
@RequestMapping("/TaskController")
public class TaskController {


    @Autowired
    private TaskService taskServices;


    @RequestMapping(value="/tasklist",method= RequestMethod.GET)
    @ResponseBody
    public List<Tasks> viewTaskList(){
        List<Tasks> taskList = taskServices.viewList();

        return taskList;

    }
    @RequestMapping(value="/userTasklist",method= RequestMethod.GET)
    @ResponseBody
    public List<Tasks> viewMyTaskList(HttpSession session){
        Employee emp =(Employee)session.getAttribute("user");
        Tasks task = new Tasks();
        task.setEmployee(emp);
        List<Tasks> myTaskList = taskServices.viewTaskDetails(task);
        if(myTaskList==null){System.out.println("my task list is null");}
        else{System.out.println("my task list is not null");}
        return myTaskList;

    }

    @RequestMapping(value = "/addNewTask",method= RequestMethod.POST)
    @ResponseBody
    public String  addDailyTask(@RequestBody Tasks task,HttpSession session){

        Employee emp =(Employee)session.getAttribute("user");
        task.setEmployee(emp);
        if(taskServices.addTask(task)) {
            return "Successfully added the daily task";
        }
        else{
            return "Error please re-enter";
        }

    }

}
