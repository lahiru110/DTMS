package hms.dtms.controller;
import hms.dtms.model.Employee;
import hms.dtms.service.EmployeeServices;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.multipart.MultipartFile;

import javax.servlet.http.HttpSession;
import java.io.BufferedOutputStream;
import java.io.File;
import java.io.FileOutputStream;
import java.util.Iterator;
import java.util.List;


@Controller
@RequestMapping("/EmployeeController")
public class EmployeeController {
    @Autowired
    private EmployeeServices employeeServices;


   // @Autowired(required = true)
    //@Qualifier(value="employeeServices")

    @RequestMapping(value="/index",method= RequestMethod.GET)
    public ModelAndView index(){

        return new ModelAndView("index","employee",new Employee());
    }


    @RequestMapping(value="/login",method= RequestMethod.POST)
    public ModelAndView  login(@RequestParam String email, @RequestParam String password, HttpSession session){


       Employee emp =  new Employee();
       emp.setEmail(email);
       emp.setPassword(password);
       //System.out.println("condtion:"+employeeServices.loginService(emp));


      // System.out.println("employee return role"+employeeServices.loginService(emp).getRole()+"\n");
        System.out.println("Input email:"+email);
        System.out.println("Input password:"+password);

        if(employeeServices.loginService(emp)!=null && employeeServices.loginService(emp).getRole().equals("admin")) {
           session.setAttribute("user",employeeServices.loginService(emp));

            System.out.println("session set admin id:"+employeeServices.loginService(emp).getEmployeeId());
            return new ModelAndView("adminpanel");

        }
        if(employeeServices.loginService(emp)!=null && employeeServices.loginService(emp).getRole().equals("user")) {
            session.setAttribute("user",employeeServices.loginService(emp));
            System.out.println("session set user id:"+employeeServices.loginService(emp).getEmployeeId());
            return new ModelAndView("userpanel");
        }
        else{
            return new ModelAndView("index","employee",new Employee());
        }
    }


   /* @RequestMapping(value = "/employeeList",method =RequestMethod.GET)
    public ModelAndView employeeListView(){
        ModelAndView map = new ModelAndView("adminpanel");
        if(employeeServices.viewList()!=null){
            System.out.println("employee List not null");
        }
        map.addObject("employeeList",employeeServices.viewList());
        return map;

    }
    */
   @RequestMapping(value="/employeelist",method=RequestMethod.GET)
   @ResponseBody
    public List<Employee> viewEmployeeList(){
       List<Employee> empList = employeeServices.viewList();

       return empList;

   }

   /* @RequestMapping(value="/addNewEmployee",method= RequestMethod.POST)
    @ResponseBody
    public String  addNewEmployee(@RequestParam String firstname, @RequestParam String surname,@RequestParam String designation,@RequestParam String email){
        String message;
        System.out.println("employee email:"+email);
        System.out.println("employee firtname"+firstname);
        System.out.println("employee surname"+surname);
        System.out.println("employee firtname"+designation);

        Employee emp =  new Employee();
        emp.setFirstname(firstname);
        emp.setSurname(surname);
        emp.setDesignation(designation);
        emp.setEmail(email);
        System.out.println("condtion:"+employeeServices.addEmployee(emp));

        if(employeeServices.addEmployee(emp)) {
            message="You successfully added the new employee";
            return message;
        }

        else{
            message="Error has occured please check and resubmit";
            return message;
        }
    } */


    @RequestMapping(value = "/addNewEmployee")
    @ResponseBody
    public String  addEmployee(@RequestBody Employee employee){
        System.out.print("firstname"+employee.getFirstname());
        System.out.print("lastname"+employee.getSurname());
        System.out.print("lastname"+employee.getDesignation());
        System.out.print("lastname"+employee.getEmail());
        Employee emp =  new Employee();
        //employeeServices.addEmployee(employee);
        //emp.setEmail(email);
       // emp.setFirstname(firstname);
        //emp.setSurname(surname);
       // emp.setDesignation(designation);
        if(employeeServices.addEmployee(employee)) {
            return "Successfully added new employee " + employee.getFirstname() + " " + employee.getSurname();
        }
        else{
            return "Error please re-enter";
        }

    }

   /* @RequestMapping(value = "/updateEmployee")
    @ResponseBody
    public String  updateEmployee(@RequestBody Employee employee,@RequestParam("image") MultipartFile file){
        System.out.print("firstname"+employee.getFirstname());
        System.out.print("lastname"+employee.getSurname());
        System.out.print("designation"+employee.getDesignation());
        System.out.print("email"+employee.getEmail());
        Employee emp =  new Employee();
        if(!file.isEmpty()){
            try{
                byte[] bytes = file.getBytes();
                String rootPath ="http://localhost:8080/dtms_web/resources/images";
                File img = new File(rootPath);
                File imageFile = new File(img.getAbsolutePath()
                        + File.separator);
                BufferedOutputStream stream = new BufferedOutputStream(
                        new FileOutputStream(imageFile));
                stream.write(bytes);
                stream.close();
                return "You successfully uploaded image";
            }
            catch(Exception e){
                return "You failed to upload ";
            }
        }
        else{
            return "You failed to upload ";
        }
        //em1ployeeServices.addEmployee(employee);
        //emp.setEmail(email);
        // emp.setFirstname(firstname);
        //emp.setSurname(surname);
        // emp.setDesignation(designation);
        *//*if(employeeServices.addEmployee(employee)) {
            return "Successfully added new employee " + employee.getFirstname() + " " + employee.getSurname();
        }
        else{
            return "Error please re-enter";
        }*//*

    }

    @RequestMapping(value="logout",method = RequestMethod.GET)
    public  String logout(HttpSession session){
        session.removeAttribute("email");
        return "redirect:../EmployeeController/index";
    }*/


    @RequestMapping(value="/employeeProfile",method=RequestMethod.GET)
    @ResponseBody
    public List<Employee> viewEmployeeProfile(HttpSession session){

        List<Employee> empList = employeeServices.viewEmployeeDetails((Employee)session.getAttribute("user"));
        if(empList!=null){System.out.println("The employee profile is not null");}
        else{System.out.println("The employee profile is null");}
        Iterator<Employee> iterator = empList.iterator();
        while(iterator.hasNext()){
            Employee emp = iterator.next();
            System.out.println("profile" +emp.getFirstname()+"/n");
            System.out.println("profile" +emp.getDesignation()+"/n");
            System.out.println("iteraor" +emp.getSurname()+"/n");
            System.out.println("iteraor" +emp.getEmail()+"/n");
            System.out.println("iteraor" +emp.getPassword()+"/n");
            System.out.println("iteraor" +emp.getEmployeeId()+"/n");

        }
        return empList;

    }

}
