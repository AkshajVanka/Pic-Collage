import javax.servlet.*;
import javax.servlet.http.*;
import java.io.*;
import java.sql.*;

public class Register extends HttpServlet {
	public void doPost(HttpServletRequest request, HttpServletResponse response) throws IOException, ServletException {

		PrintWriter out = response.getWriter();
		String username = request.getParameter("username"), password = request.getParameter("password");
		try {
			Class.forName("com.mysql.jdbc.Driver");
			Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/wt_assignment", "root",
					"password");
			PreparedStatement st = con.prepareStatement("insert into users values(?,?)");
			st.setString(1, username);
			st.setString(2, password);
			st.executeUpdate();
			st.close();
			con.close();

		} catch (Exception e) {
			out.println(e);
		}

		response.sendRedirect("landing.jsp");

	}
}