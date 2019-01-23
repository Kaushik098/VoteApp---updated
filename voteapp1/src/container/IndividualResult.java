package container;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.kaushik.voteapp.model.VoteSummary;
import com.kaushik.voteapp.service.CastService;
import com.kaushik.voteapp.service.impl.CastServiceImpl;

/**
 * Servlet implementation class UserVote
 */
@WebServlet("/IndividualResult")
public class IndividualResult extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public IndividualResult() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        int candidateID = Integer.parseInt(request.getParameter("cID"));
		
		CastService individual = new CastServiceImpl();
		List<VoteSummary> voteCount = individual.candidateVoteCount(candidateID);
		
		 HttpSession session = request.getSession();
	     session.setAttribute("INDIVIDUAL_CANDIDATE_VOTES", voteCount);
		 
	     response.sendRedirect("individualResult.jsp");
	     
		 System.out.println("The total vote count for candidateid "+ candidateID +" is "+ voteCount);
	}

	

}
