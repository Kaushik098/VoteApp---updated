package container;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.kaushik.voteapp.service.CandidateService;
import com.kaushik.voteapp.service.impl.CandidateServiceImpl;

/**
 * Servlet implementation class RemoveCandidate
 */
@WebServlet("/RemoveCandidate")
public class RemoveCandidate extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public RemoveCandidate() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		 int candidateID = Integer.parseInt(request.getParameter("dID")); 
				  
		  CandidateService delete = new CandidateServiceImpl();
		  delete.deleteCandidate(candidateID);
		  
		  System.out.println("Successfully Candidate has been removed");
		  
		  response.sendRedirect("candidateDeleted.jsp");
	}

}
