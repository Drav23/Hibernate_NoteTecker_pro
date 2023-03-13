package org.servlets;

import java.io.IOException;

import javax.persistence.EntityManager;
import javax.persistence.EntityManagerFactory;
import javax.persistence.EntityTransaction;
import javax.persistence.Persistence;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.viren.dao.Notes_Dao;
import org.viren.dto.Note;


public class DeleteServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
    
    public DeleteServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.getWriter().append("Served at: ").append(request.getContextPath());
		try {
//			int id=;
			
//			EntityManagerFactory factory=Persistence.createEntityManagerFactory("Drav");
//			EntityManager manager=factory.createEntityManager();
//			EntityTransaction transaction=manager.getTransaction(); 
//			
//			transaction.begin();
//			Note note= manager.find(Note.class, id);
//			manager.remove(note);
//			transaction.commit();
			Notes_Dao dao=new Notes_Dao();
			dao.deleteNote(Integer.parseInt(request.getParameter("note_id").trim()));
			response.sendRedirect("all_notes.jsp");
		} catch (Exception e) {
			// TODO: handle exception
		}
	}

}
