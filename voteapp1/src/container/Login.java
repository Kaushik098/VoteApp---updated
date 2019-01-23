package container;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.kaushik.voteapp.model.Candidate;
import com.kaushik.voteapp.model.User;
import com.kaushik.voteapp.service.CandidateService;
import com.kaushik.voteapp.service.UserService;
import com.kaushik.voteapp.service.impl.CandidateServiceImpl;
import com.kaushik.voteapp.service.impl.UserServiceImpl;

/**
 * Servlet implementation class Login
 */
@WebServlet("/Login")
public class Login extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Login() {
        super();
        // TODO Auto-generated constructor stub
    }


	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String name = request.getParameter("name");
		String password = request.getParameter("pwd");
		
		UserService l = new UserServiceImpl();
		User loginResult = l.login(name, password);
		
		 if(loginResult == null){
		    	request.setAttribute("ERROR_MSG", "invalid email/password");
				RequestDispatcher req = request.getServletContext().getRequestDispatcher("/login.jsp");
				req.forward(request, response);	
		    }
		 else  	
		    {
		    if(loginResult.getRole().equals("user"))
		    {
		     HttpSession session = request.getSession();
		     session.setAttribute("LOGGED_IN_USER", loginResult);
	         
		     List<Candidate> allCandidates = new ArrayList<>();
		     
		     CandidateService show = new CandidateServiceImpl();
		     allCandidates = show.getAllCandidates();
		     
		     HttpSession session1 = request.getSession();
		     session1.setAttribute("ALL_CANDIDATES", allCandidates);
		     System.out.println("Success User");
		     response.sendRedirect("userHome.jsp"); 
		    }
		    else if (loginResult.getRole().equals("admin"))
		    {
		       HttpSession session = request.getSession();
		       session.setAttribute("ADMIN_LOGGED", loginResult);
		       System.out.println("Success Admin");
		       response.sendRedirect("adminHome.jsp");
		     }	
		   }
	}

}
