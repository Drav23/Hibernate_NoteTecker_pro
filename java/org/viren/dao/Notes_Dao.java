package org.viren.dao;




import javax.persistence.EntityManager;
import javax.persistence.EntityManagerFactory;
import javax.persistence.EntityTransaction;
import javax.persistence.Persistence;

import org.viren.dto.Note;

public class Notes_Dao
{
	EntityManagerFactory factory=Persistence.createEntityManagerFactory("Drav");
    EntityManager manager=factory.createEntityManager();
    EntityTransaction transaction=manager.getTransaction();
	
	public void saveNotes(Note note)
	{
		transaction.begin();
		if(note==null)
		{
		manager.persist(note);
		transaction.commit();
		}
		else if(note!=null)
		{
			manager.persist(note);
			transaction.commit();
		}
	}
	
//	public void updateNotes(int parseInt)
//	{
//		transaction.begin();
//		Note note= manager.find(Note.class, parseInt);
//		note.setTitle(title);
//		note.setContent(content);
//		manager.merge(note);
//		
//		transaction.commit();
//	}
//	
//	public void findNotes(int id)
//	{
//		manager.find(Note.class, id);
//	}
	
//	public void deleteNote(int id)
//	{
//		transaction.begin();
//		Note note= manager.find(Note.class, id);
//		if(note !=null)
//		{
//		manager.remove(note);
//		transaction.commit();
//		System.out.println(note);
//		}
//		else
//			System.out.println("Id is note present:");
//	}
//	public void findAll()
//	{
//		Query query=manager.createQuery("Select n from Notes n");
//		List<Note> n=query.getResultList();
//		for(Note note:n)
//		{
//			System.out.println(note.getId()+":"+"/n"+note.getTitle());
//		}
//	}

	public void deleteNote(int parseInt) {
		// TODO Auto-generated method stub
		transaction.begin();
		Note note= manager.find(Note.class, parseInt);
		manager.remove(note);
		transaction.commit();
	}
	

}
