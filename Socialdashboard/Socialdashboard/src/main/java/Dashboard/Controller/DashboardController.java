package Dashboard.Controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import Dashboard.Entity.Signin_login;
import Dashboard.Repository.signin_login_Repository;
import jakarta.servlet.http.HttpSession;


@Controller
public class DashboardController {

	@Autowired
	signin_login_Repository repo;
	
	
	@RequestMapping("/")
	public String home()
	{
		return "welcome";
	}
	
	@RequestMapping("/signin")
	public String signin()
	{
		return "signin";
	}
	@RequestMapping("/signinsuccess")
    public String signinsuccess(@ModelAttribute Signin_login signinsave) {
        repo.save(signinsave);
        return "welcome";
    }
	
	 //---------------------------------Sign in Complete ------------------------------------
	
	 @RequestMapping("/Login")
	    public String Loginpage()
	    {
			return "login";
	    }
	 @RequestMapping("/loginsuccess")
	    public String loginpage(@RequestParam String email, @RequestParam String password, Model model, HttpSession userLog) {
	        System.out.println(email);
	        System.out.println(password);
	        int status = 0;
	        
	        Signin_login emp = repo.findByEmail(email);
	        
	        if (emp != null && emp.getEmail().equals(email) && emp.getPassword().equals(password)) {
	            status++;
	            userLog.setAttribute("loggedin", emp);
	            model.addAttribute("user", emp);
	        }

	        if (status > 0) {
	            return "Dashboard"; 
	        } else {
	            return "login"; 
	        }
	 }
	 @RequestMapping("/dashboard")
	 public String dashboard(Model model, HttpSession session) {
	     Signin_login user = (Signin_login) session.getAttribute("loggedin");
	     if (user != null) {
	         model.addAttribute("user", user); // Add user attribute to the model
	         return "Dashboard";
	     } else {
	         return "login";
	     }
	 }

	 
}
