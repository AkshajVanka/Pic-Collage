import javax.servlet.*;
import javax.servlet.http.*;
import java.io.*;
import java.sql.*;

public class Login extends HttpServlet {
	public void doPost(HttpServletRequest request, HttpServletResponse response) throws IOException, ServletException {

		boolean flag = false;
		PrintWriter out = response.getWriter();
		String username = request.getParameter("username"), password = request.getParameter("password");
		try {
			Class.forName("com.mysql.jdbc.Driver");
			Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/wt_assignment", "root",
					"password");
			PreparedStatement st = con.prepareStatement("select * from users where email=? and password=?");
			st.setString(1, username);
			st.setString(2, password);
			ResultSet rs = st.executeQuery();
			if (rs.next())
				flag = true;
			st.close();
			con.close();

		} catch (Exception e) {
			out.println(e);
		}
		if (flag == true)
			response.sendRedirect("landing.jsp");
		else
			response.sendRedirect("index.jsp");

	}
}