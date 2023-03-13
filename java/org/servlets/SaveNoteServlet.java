package org.servlets;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.Date;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.viren.dao.Notes_Dao;
import org.viren.dto.Note;

public class SaveNoteServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

    public SaveNoteServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

//    we can remove this doGet() method
//	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
//		// TODO Auto-generated method stub
//		response.getWriter().append("Served at: ").append(request.getContextPath());
//	}
	
//	Our method is running on doPost() method because we don't want to show detail in URL
	protected void doPost(HttpServletRequest request, HttpServletResponse response) 
			throws ServletException, IOException {
		try 
		{
//			fetching the title and content of the add_notes JSP
			
		   String title=request.getParameter("title");
			String content=request.getParameter("content");
			
			Note note=new Note(title, content, new Date());
			
//			System.out.println(note.getId() +"  "+ note.getTitle());
//			Hibernate to save input to database
			
			Notes_Dao dao=new Notes_Dao();
			dao.saveNotes(note);
			response.setContentType("text/html");
			PrintWriter out=response.getWriter();
			out.println("<h2 style='text-align:center;'><a href='all_notes.jsp' style='text-center'>View all notes</a></h2");
			out.println("<h3 style='text-align:center;'><img class=\"card-img-top\" style='max-width:1920px;'  src=\"Images/coding.jpg\" alt=\"Note is added successfully \"></h3");
			

//			out.println("<a href='all_notes.jsp'></a>");
		} 
		catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
		}
		
	}

}

























