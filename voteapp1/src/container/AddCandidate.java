package container;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.kaushik.voteapp.model.Candidate;
import com.kaushik.voteapp.model.Category;
import com.kaushik.voteapp.service.CandidateService;
import com.kaushik.voteapp.service.impl.CandidateServiceImpl;

/**
 * Servlet implementation class AddCandidate
 */
@WebServlet("/AddCandidate")
public class AddCandidate extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public AddCandidate() {
        super();
        // TODO Auto-generated constructor stub
    }

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		int candidateID = Integer.parseInt(request.getParameter("cID"));
		String candidateName = request.getParameter("cN");
		int categoryID = Integer.parseInt(request.getParameter("v_catId"));
		String categoryName = request.getParameter("v_catN");
		
		Candidate c = new Candidate();
		
		c.setCandidateId(candidateID);
		c.setCandidateName(candidateName);
		Category category = new Category(categoryID, categoryName);
		c.setCategory(category);
		
		CandidateService add = new CandidateServiceImpl();
		add.addCandidate(c);
	   
		
		System.out.println("Candidate Added");
		
		response.sendRedirect("candidateAdded.jsp");
	}

}
