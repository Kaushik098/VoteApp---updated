package container;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import com.kaushik.voteapp.model.Cast;
import com.kaushik.voteapp.model.User;
import com.kaushik.voteapp.service.CastService;
import com.kaushik.voteapp.service.impl.CastServiceImpl;

/**
 * Servlet implementation class Vote
 */
@WebServlet("/Vote")
public class Vote extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Vote() {
        super();
        // TODO Auto-generated constructor stub
    }

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub

        String candidate1 = request.getParameter("A");
        String candidate2 = request.getParameter("B");
		String candidate3 = request.getParameter("C");
		String candidate4 = request.getParameter("D");
        
		int c1 = Integer.parseInt(candidate1);
		int c2 = Integer.parseInt(candidate2);
		int c3 = Integer.parseInt(candidate3);
		int c4 = Integer.parseInt(candidate4);
		
		HttpSession sessionResult = request.getSession();
		User user = (User) sessionResult.getAttribute("LOGGED_IN_USER");
		
	//	System.out.println(user);
		
		Cast c = new Cast();
		c.setUserID(user.getUserId());
		c.setCandidateID1(c1);
		c.setCandidateID2(c2);
		c.setCandidateID3(c3);
		c.setCandidateID4(c4);
		
		System.out.println(c.toString());
		
		CastService cast = new CastServiceImpl();
	    int n = cast.addVote(c);
		
        if(n>0){
        	System.out.println("Already voted!! Sorry!!");
        	
        	response.sendRedirect("alreadyVoted.jsp");
        }
        else{
        	System.out.print(user.getAdhaarName()+ " voted to " + candidate1+", "+candidate2+", "+candidate3+", "+candidate4);
    		
    		response.sendRedirect("successfullyVoted.jsp");		
        }
	}

}
