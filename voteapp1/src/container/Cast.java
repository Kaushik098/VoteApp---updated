package container;

import java.io.IOException;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.LinkedHashSet;
import java.util.List;
import java.util.Map;
import java.util.Set;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.kaushik.voteapp.model.Candidate;
import com.kaushik.voteapp.service.CandidateService;
import com.kaushik.voteapp.service.impl.CandidateServiceImpl;

/**
 * Servlet implementation class Cast
 */
@WebServlet("/Cast")
public class Cast extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Cast() {
        super();
        // TODO Auto-generated constructor stub
    }
    
	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
         List<Candidate> allCandidates = new ArrayList<>();
	     
	     CandidateService show = new CandidateServiceImpl();
	     allCandidates = show.getAllCandidates();
	     
	     HttpSession session = request.getSession();
         session.setAttribute("ALL", allCandidates);
	      
	     response.sendRedirect("cast.jsp");
		 
	}

}
