package controllers;

import java.util.List;


import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import javax.validation.Valid;

import dao.StudentDAO;
import dao.StudentDAOImpl;
import model.Student;

@Controller
public class MyController {
	
	@Autowired
	StudentDAO sdao;
	
	
	public MyController() {
		this.sdao = new StudentDAOImpl();
	}


	@RequestMapping("/")
	public String home() {
		return "index";
		
	}
	

	@RequestMapping("/addStudent")
	public String openForm(Model model) {
		model.addAttribute("stu", new Student());
		return "AddNewStudent";
	}

	@RequestMapping(value = "/saveStudent", method = RequestMethod.POST)
	public String AddNewStudent(@ModelAttribute("stu") Student ob) {
		sdao.create(ob);
		return "Success";
	}
	@RequestMapping("/AllStudents")
	public ModelAndView ShowAll(){
		ModelAndView model = new ModelAndView();
		List<Student> data = sdao.ShowAllStudent();
		
		System.out.println(data);
		model.addObject("allData", data);
		model.setViewName("ShowAllStudent");
		return model;
	}
	
	@RequestMapping(value = "/delete",method = RequestMethod.GET)
	public String delete(@RequestParam(value="id") int id){
		
		sdao.delete(id);
		return "redirect:/AllStudents";
	}
	
	@RequestMapping(value = "/EditStudent", method = RequestMethod.GET)
	public ModelAndView editStudentById(@RequestParam(value = "id") int id) {
		ModelAndView model = new ModelAndView();
		Student stu = sdao.getStudentById(id);
		model.addObject("data", stu);
		model.setViewName("EditStudent");
		return model;
	}

	@RequestMapping(value = "/updateStudent", method = RequestMethod.POST)
	public String updateStudent(@Valid @ModelAttribute("data") Student stu, BindingResult br) {
		if (br.hasErrors()) {
			return "EditStudent";
		}
		else {
		sdao.updateStudent(stu);
		return "redirect:/showAll";
	
		}
	}


}
