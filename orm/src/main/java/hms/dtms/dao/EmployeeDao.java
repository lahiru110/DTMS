package hms.dtms.dao;

import hms.dtms.model.Employee;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import java.sql.SQLException;
import java.util.Iterator;
import java.util.List;

@Repository
public class EmployeeDao {
   /* @Autowired
    private JdbcTemplate jdbcTemplate;

    public JdbcTemplate getJdbcTemplate() {
        if(jdbcTemplate==null){System.out.println("getJdbcTemplate is null");}
        else if(jdbcTemplate!=null){System.out.print("getJdbcTemplateNot null");}
        return jdbcTemplate;
    }

    @Autowired
    public void setJdbcTemplate(JdbcTemplate jdbcTemplate) {
        this.jdbcTemplate = jdbcTemplate;
    }
        */
    @Autowired
   private SessionFactory sessionFactory;




   public void setSessionFactory(SessionFactory sf){
       this.sessionFactory = sf;
   }

   @Autowired
   private Employee emp;


  /*  public boolean addNewEmployee(Employee employee) throws SQLException, ClassNotFoundException {
        boolean status = false;

        Connection conn = DBConnection.getConnection();
        String query = "INSERT INTO EMPLOYEE(employeeID,firstname,surname,designation,email,password,role)" + " VALUES(?,?,?,?,?) ";

        PreparedStatement preparedStatement = conn.prepareStatement(query);

        preparedStatement.setInt(1, employee.getEmployeeID());
        preparedStatement.setString(2, employee.getFirstname());
        preparedStatement.setString(3, employee.getSurname());
        preparedStatement.setString(4, employee.getDesignation());
        preparedStatement.setString(5, employee.getEmail());
        preparedStatement.setString(6, employee.getPassword());
        preparedStatement.setString(7, employee.getRole());

        status = preparedStatement.execute();
        conn.close();
        return status;
    }

    /**
     * @return status checking whether the database transaction is done correctly
     * method for delete existing field database
     */
   /* public boolean delete(Employee employee) throws SQLException, ClassNotFoundException {
        boolean status = false;

        Connection conn = DBConnection.getConnection();
        String query = "DELETE FROM employee WHERE employeeID= ? ";

        PreparedStatement preparedStatement = conn.prepareStatement(query);
        preparedStatement.setInt(1, employee.getEmployeeID());

        status = preparedStatement.execute();
        System.out.print(status);

        conn.close();

        return status;

    } */

    /**
     * @return status checking whether the transaction is done correctly
     * method for updating database
     */
  /*  public boolean update(Employee employee) throws SQLException, ClassNotFoundException {
        boolean status = true;

        Connection conn = DBConnection.getConnection();
        String query = "UPDATE  employee SET firstname= ? ,surname = ?,designation = ?,email=?,password=?,role=? WHERE employeeID=?";

        PreparedStatement preparedStatement = conn.prepareStatement(query);
        preparedStatement.setString(1, employee.getFirstname());
        preparedStatement.setString(2, employee.getSurname());
        preparedStatement.setString(3, employee.getDesignation());
        preparedStatement.setString(4, employee.getEmail());
        preparedStatement.setString(5, employee.getPassword());
        preparedStatement.setString(6, employee.getRole());
        preparedStatement.setInt(7, employee.getEmployeeID());
        status = preparedStatement.execute();
        System.out.print(status);

        conn.close();
        return status;

    } */
 /*   public boolean checklogin(Employee employee) throws SQLException, ClassNotFoundException, NullPointerException {
        boolean status = false;
        // ApplicationContext applicationContext = new ClassPathXmlApplicationContext("classpath:dtms-servlet.xml");
        // JdbcTemplate jdbcTemplate = (JdbcTemplate) applicationContext.getBean("jdbcTemplate");
        System.out.println("employee get email" + employee.getEmail());
        System.out.println("employee get pass" + employee.getPassword());
        if (jdbcTemplate == null) {

            System.out.print("jdbcTemplate null");
        } else if (jdbcTemplate != null) {

            System.out.print("jdbcTemplate not null ");


        }
        String query = "SELECT email,password,role FROM employee WHERE email= ? AND password= ?";
        int count = jdbcTemplate.queryForObject(query, new Object[]{employee.getEmail(), employee.getPassword()}, Integer.class);
        System.out.println("\n lalala");
        if (count > 0) {
            System.out.println("database connection success");
            status = true;
        }
        return status;
    }
}
*/


public Employee checklogin(Employee employee)throws SQLException, ClassNotFoundException{
    Employee emp = null;
    int status=0;
    System.out.println("employee email:"+employee.getEmail());
    System.out.println("employee pass:"+employee.getPassword());
    Session session = this.sessionFactory.openSession();
    Transaction transaction = session.beginTransaction();
    if(session.createQuery("FROM Employee e WHERE e.email='"+employee.getEmail()+"' AND e.password='"+employee.getPassword()+"' AND e.role='user'",Employee.class).uniqueResult()!=null){
       emp = session.createQuery("FROM Employee e WHERE e.email='"+employee.getEmail()+"' AND e.password='"+employee.getPassword()+"' AND e.role='user'",Employee.class).uniqueResult();
    }

    else if(session.createQuery("FROM Employee e WHERE e.email='"+employee.getEmail()+"'AND e.password='"+employee.getPassword()+"' AND e.role='admin'",Employee.class).uniqueResult()!=null){
        emp = session.createQuery("FROM Employee e WHERE e.email='"+employee.getEmail()+"' AND e.password='"+employee.getPassword()+"' AND e.role='admin'",Employee.class).uniqueResult();

    }

    //transaction.commit();
    //session.flush();
    //session.close();
    return emp;
}

    public List<Employee> viewEmployeeList()throws SQLException, ClassNotFoundException{

        Session session = this.sessionFactory.openSession();
        Transaction transaction = session.beginTransaction();


        List<Employee> employeeList = session.createQuery("FROM Employee e",Employee.class).list();
        if(employeeList!=null){
            System.out.println("employee list not null");
        }
       // session.flush();
       // session.close();
        Iterator<Employee> iterator = employeeList.iterator();
        while(iterator.hasNext()){
            Employee emp = iterator.next();
            System.out.println("iteraor" +emp.getFirstname()+"/n");
            System.out.println("iteraor" +emp.getDesignation()+"/n");
            System.out.println("iteraor" +emp.getSurname()+"/n");
            System.out.println("iteraor" +emp.getEmail()+"/n");
            System.out.println("iteraor" +emp.getPassword()+"/n");
            System.out.println("iteraor" +emp.getEmployeeId()+"/n");
          }
        return employeeList;
    }





    public List<Employee> employeeDetails(Employee employee)throws SQLException, ClassNotFoundException{
        boolean status=false;
        System.out.println("employee email:"+employee.getEmail());
        System.out.println("employee pass:"+employee.getPassword());
        Session session = this.sessionFactory.openSession();
        Transaction transaction = session.beginTransaction();
        List<Employee> employeeDetails = session.createQuery("FROM Employee e WHERE e.email='"+employee.getEmail()+"'",Employee.class).list();

        System.out.println("employee list not null");

        //transaction.commit();
        // session.flush();
        // session.close();
        return employeeDetails;
    }



public boolean addEmployeeData(Employee employee)throws SQLException,ClassNotFoundException{
    boolean status=false;
    Session session = this.sessionFactory.getCurrentSession();
    System.out.println("employee getName"+ employee.getFirstname());
    System.out.println("employee getSurname"+ employee.getSurname());
    System.out.println("employee getDesignation"+ employee.getDesignation());
    System.out.println("employee getPassword"+ employee.getEmail());
  //  Transaction transaction =  session.beginTransaction();
    employee.setPassword("pass");
    employee.setRole("user");
    int id =(Integer)session.save(employee);
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
/**
 * @return list of projects
 * method for retrieve project list from database
 */
   /* public ArrayList viewList() throws SQLException, ClassNotFoundException {//admin list retrieve
        ArrayList<Employee> employeelist = new ArrayList<Employee>();


        Connection conn = DBConnection.getConnection();


        Statement stmt = conn.createStatement();


        ResultSet results = stmt.executeQuery("SELECT employeeID,firstname,surname,designation,email,password,role FROM employee");

        while (results.next())

        {

            Employee employee = new Employee();

            employee.setEmployeeID((results.getInt("employeeID")));
            employee.setFirstname((results.getString("firstname")));
            employee.setSurname((results.getString("surname")));
            employee.setDesignation((results.getString("designation")));
            employee.setEmail((results.getString("email")));
            employee.setPassword((results.getString("password")));
            employee.setRole((results.getString("role")));

            employeelist.add(employee);

        }

        return employeelist;
    }

    public Employee viewEmployeeDetails(Employee emp) throws SQLException, ClassNotFoundException {//admin list retrieve

        Connection conn = DBConnection.getConnection();
        Statement stmt = conn.createStatement();
        ResultSet results = stmt.executeQuery("SELECT employeeID,firstname,surname,designation,email FROM employee where employeeID='"+emp.getEmployeeID()+"';");
        Employee employee = new Employee();
        while (results.next())

        {
            employee.setEmployeeID((results.getInt("employeeID")));
            employee.setFirstname((results.getString("firstname")));
            employee.setSurname((results.getString("surname")));
            employee.setDesignation((results.getString("designation")));
            employee.setEmail((results.getString("email")));


        }

        return employee;
    }
} */
