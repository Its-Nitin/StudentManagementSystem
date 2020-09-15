package dao;

import java.util.List;

import model.Student;

public interface StudentDAO {

	public void create(Student student);
	public List<Student> ShowAllStudent();
	public boolean delete(int id);
	public Student getStudentById(int id);
	public void updateStudent(Student stu);
}
