package hms.dtms.service;

import hms.dtms.dao.TaskDao;
import hms.dtms.model.Tasks;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.sql.SQLException;
import java.util.Calendar;
import java.util.List;

@Service
public class TaskService {
    @Autowired
    private TaskDao taskDao;

    @Transactional
    public List<Tasks> viewList(){
        List<Tasks> tasklist=null;
        try {
            tasklist = taskDao.viewTaskList();
        }
        catch (SQLException sl){
            sl.printStackTrace();
        }
        catch(ClassNotFoundException cls){
            cls.printStackTrace();
        }
        return tasklist;
    }

    @Transactional
    public List<Tasks> viewTaskDetails(Tasks task){
        List<Tasks> tasklist=null;
        try {
            tasklist = taskDao.taskDetails(task);
        }
        catch (SQLException sl){
            sl.printStackTrace();
        }
        catch(ClassNotFoundException cls){
            cls.printStackTrace();
        }
        return tasklist;
    }



    @Transactional
    public boolean addTask(Tasks task){
        boolean status = false;
        Calendar calendar = Calendar.getInstance();

        String time =calendar.get(Calendar.HOUR_OF_DAY)+":"+calendar.get(Calendar.MINUTE)+":"+calendar.get(Calendar.SECOND);
        task.setUpdatedTime(time);
        long millis=System.currentTimeMillis();
        java.sql.Date date=new java.sql.Date(millis);

        task.setDate( date.toString());
        try {

            if (taskDao.addTaskData(task)) {

                status = true;
            }

            else {
                status = false;
                System.out.println("condition-status:" + status);
            }
        }
        catch(SQLException sq){
            sq.printStackTrace();
        }
        catch(ClassNotFoundException cls){
            cls.printStackTrace();
        }
        System.out.println("return-status:"+status);
        return status;

    }

}
