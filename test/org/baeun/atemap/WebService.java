package org.baeun.atemap;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.jsoup.Jsoup;
import org.jsoup.nodes.Document;

@WebServlet("/server")
public class WebService extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		String html = request.getParameter("html");
		Document doc = Jsoup.connect(getInitParameter("url") + html).get();
		doc.select("div").append("hi");
		if (request.isRequestedSessionIdValid()) {
			String myinfo = (String) request.getSession().getAttribute("myinfo");
			doc.select("p").append(myinfo);
		} else {
			doc.select("p").append("no session");
			request.getSession().setAttribute("myinfo", "pikachu");
		}
		response.getWriter().append(doc.toString());
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		doGet(request, response);
	}

}
