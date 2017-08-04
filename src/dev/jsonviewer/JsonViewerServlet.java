package dev.jsonviewer;

import java.io.IOException;
import java.io.PrintWriter;
import java.nio.file.Files;
import java.nio.file.Path;
import java.nio.file.Paths;
import java.util.stream.Stream;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/index")
public class JsonViewerServlet extends HttpServlet{
	private static final long serialVersionUID = 1L;

	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse res) throws ServletException, IOException {
		System.out.println("jsonview진입");
		String id = req.getParameter("id");
		if (id == null) {
			res.sendRedirect("index.html");
			return;
		}
		System.out.println("id: " +id);
		PrintWriter out = res.getWriter();
		String path = req.getServletContext().getRealPath("/json/" + id+".json");
		System.out.println(path);
		Path path2 = Paths.get(path);
		//res.setContentType("text/html;charset=UTF-8");
		res.setContentType("application/json");
		
		switch (id) {
		case "home":
			System.out.println("home in");
			try {
				
//				Stream<String> lines = Files.lines(path2);
//				lines.forEach(s -> out.print(s));
//				lines.close();
			} catch (Exception e) {
				// TODO: handle exception
			}
			break;

		default:
			break;
		}
	}
}
