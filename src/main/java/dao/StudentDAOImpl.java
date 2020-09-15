package dao;

import java.util.Iterator;
import java.util.List;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import model.Student;

@Repository(value = "sdao")
public class StudentDAOImpl implements StudentDAO {

	@Autowired
	SessionFactory sessionFactory;
	

	public StudentDAOImpl() {
		super();
	}

	public SessionFactory getSessionFactory() {
		return sessionFactory;
	}
	public void setSessionFactory(SessionFactory sessionFactory) {
		this.sessionFactory = sessionFactory;
	}



	@Override
	public void create(Student student) {

		Session sess = sessionFactory.openSession();
		sess.beginTransaction();
		sess.persist(student);
		sess.getTransaction().commit();
	}

	@Override
	public List<Student> ShowAllStudent() {
		return sessionFactory.openSession().createQuery("from Student").list();
	}	
					
					
	@Override
	public boolean delete(int id) {
		Session sess = sessionFactory.openSession();
		sess.beginTransaction();
		Student st =(Student) sess.load(Student.class, id);
		sess.delete(st);
		sess.getTransaction().commit();
		return true;
		
	}

	@Override
	public Student getStudentById(int id) {
		Session sess = sessionFactory.openSession();
		sess.beginTransaction();
		Student stu = (Student) sess.load(Student.class, id);
		return stu;

	}
	@Override
	public void updateStudent(Student stu) {
		Session sess = sessionFactory.openSession();
		sess.beginTransaction();
		sess.update(stu);
		sess.getTransaction().commit();
	}
	
}
