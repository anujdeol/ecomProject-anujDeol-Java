

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.Statement;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 * Servlet implementation class SessionTracking
 */
@WebServlet("/SessionTracking")
public class SessionTracking extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public SessionTracking() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.getWriter().append("Served at: ").append(request.getContextPath());
		
		response.setContentType("text/html");
		PrintWriter out=response.getWriter();
		out.println("<html><body>");
		String name=request.getParameter("name");
		String pass=request.getParameter("password");

		try
		{
			Class.forName("com.mysql.cj.jdbc.Driver");
			Connection c = DriverManager.getConnection(UserCredentials.URL, UserCredentials.USERNAME,
					UserCredentials.PASSWORD);
			Statement st = c.createStatement();
			out.println("Connection created ");

		ResultSet rs=st.executeQuery("select * from ECOMUSERS where username='"+name+"' and password='"+pass+"'");
		if(rs.next())
		{
		HttpSession se=request.getSession();

		//se.setMaxInactiveInterval(60*60*60);
		//out.println(se.getMaxInactiveInterval());
		se.setAttribute("name",name);
		se.setAttribute("pass",pass);
		out.println("User is Valid   - "+se.isNew());
		out.println("<br>");
		//RequestDispatcher rd=req.getRequestDispatcher("welcome.jsp");
		//rd.forward(req, res);
		response.sendRedirect("Welcome.jsp");
		}
		else
		out.println("Invalid User");

		}catch(Exception e){out.println(e.toString());}
		out.println("</body></html>");
		
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
