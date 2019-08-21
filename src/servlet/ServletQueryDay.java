package servlet;
import java.io.IOException;
import java.sql.SQLException;
import java.util.List;

import javax.jws.WebService;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import dao.DataDao;
import dao.DataDaoImpl;
import entity.Data;
public class ServletQueryDay extends HttpServlet {
	 protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	        doGet(request, response);
	    }
	 protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		 DataDao datadao = new DataDaoImpl();
		 List<Data> daydataList;
		 try{
			 daydataList = datadao.queryDay();
			 request.setAttribute("daydataList",daydataList);
			 request.getRequestDispatcher("/rank.jsp").forward(request, response);
		 } catch (SQLException e) {
	            e.printStackTrace();
	        }
	 }
}
