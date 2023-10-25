

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.Statement;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class Registration
 */
@WebServlet("/Registration")
public class Registration extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Registration() {
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
		PrintWriter out = response.getWriter();
		out.println("<html><body>");
		out.println("<style>" + "body{" + "background:#34495e;" + "}" + "h1,h1 a{" + "text-align:center;"
				+ "color:white;}" + "</style>");
		String email = request.getParameter("email");
		String username = request.getParameter("name");
		String password = request.getParameter("password");
		out.println(email);
		out.println(username);
		out.println(password);
		try {
			Class.forName("com.mysql.cj.jdbc.Driver");
			Connection c = DriverManager.getConnection(UserCredentials.URL, UserCredentials.USERNAME,
					UserCredentials.PASSWORD);
			Statement st = c.createStatement();
			out.println("Connection created ");
			
			String insertSQL = "INSERT INTO ECOMUSERS (email, username, password) VALUES (?, ?, ?)";
			
			PreparedStatement preparedStatement = c.prepareStatement(insertSQL);
			
			 preparedStatement.setString(1, email);
			    preparedStatement.setString(2, username);
			    preparedStatement.setString(3, password);
			    int rowsAffected = preparedStatement.executeUpdate();


//			int a = st.executeUpdate(
//					"INSERT INTO ECOMUSERS (email, username, password) values('" + email + "'," + "'" + username + "'," + "'" + password + "')");
			out.println("<h1>Registered Succesfully<br/>");
			out.println("<a href='login.html'>Click here to Login</a></h1>");
		} catch (Exception e) {
			out.println(e.toString());
		}
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
