package hms.dtms.service;

import hms.dtms.dao.EmployeeDao;
import hms.dtms.model.Employee;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import javax.transaction.Transactional;
import java.sql.SQLException;
import java.util.List;

@Service
public class EmployeeServices {
        @Autowired
        private EmployeeDao employeeDao;


  /*
    public boolean createNewEmployee(Employee employee) {
        boolean status=false;
        EmployeeDao employeeDao = new EmployeeDao();
        try {
            if (!employeeDao.addNewEmployee(employee)) {
                status=true;
            }
        } catch (ClassNotFoundException classnotfoundexception) {
            classnotfoundexception.printStackTrace();
        } catch (SQLException sqlexception) {
            sqlexception.printStackTrace();

        }
        return status;
    }
    /**
     * @return nothing remove  existing project
     */


    /**
     * @return nothing remove  existing project
     */

 /*   public void remove(Employee employee) {
        EmployeeDao employeeDao =  new EmployeeDao();
        if (!employeeDao.delete(employee)) {
            System.out.println("You have Delete the project successfully");
        } else {
            System.out.print("Error!!");
        }


    }

    /**
     * @return nothing update existing project
     */
 /* public boolean updateEmployee(Employee employee){
        boolean status=false;
        EmployeeDao employeeDao =  new EmployeeDao();
        try {
            if (!employeeDao.update(employee)) {
                status=true;
            }
        }catch (ClassNotFoundException classnotfoundexception) {
            classnotfoundexception.printStackTrace();
        } catch (SQLException sqlexception) {
            sqlexception.printStackTrace();

        }
        return status;
    }
*/
    /**
     * @return nothing show all the projects & details
     */
    @Transactional
    public List<Employee> viewList(){
        List<Employee> emplist=null;
         try {
             emplist = employeeDao.viewEmployeeList();
         }
         catch (SQLException sl){
             sl.printStackTrace();
         }
         catch(ClassNotFoundException cls){
             cls.printStackTrace();
         }
         return emplist;
    }

    @Transactional
    public List<Employee> viewEmployeeDetails(Employee employee){
        List<Employee> emplist=null;
        try {
            emplist = employeeDao.employeeDetails(employee);
        }
        catch (SQLException sl){
            sl.printStackTrace();
        }
        catch(ClassNotFoundException cls){
            cls.printStackTrace();
        }
        return emplist;
    }

    @Transactional
    public Employee loginService(Employee employee){
        Employee emp = new Employee();

      try {
           System.out.println("Email input:" + employee.getEmail());
           System.out.println("Password input:" + employee.getPassword());
            String email=employee.getEmail();
            String pssword=employee.getPassword();



               emp = employeeDao.checklogin(employee);
          System.out.println("return-employee-firstname:"+emp.getFirstname());
          System.out.println("return-employee-surname:"+emp.getSurname());
          System.out.println("return-employee-Role:"+emp.getRole());

       }
        catch(SQLException sq){
            sq.printStackTrace();
        }
        catch(ClassNotFoundException cls){
            cls.printStackTrace();
        }




        return emp;

    }

    @Transactional
    public boolean addEmployee(Employee employee){
        boolean status = false;

        try {

            if (employeeDao.addEmployeeData(employee)) {

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

