package dc.demospring_javapoz21_h2.controller;

import dc.demospring_javapoz21_h2.dao.StudentRepository;
import dc.demospring_javapoz21_h2.model.Student;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import java.util.Optional;

@Controller
public class StudentController {
    @Autowired
    public StudentRepository repozytorium;

    @RequestMapping("/")
    public String home() {
        return "home.jsp";
    }

    @RequestMapping("/addStudent")
    public String addStudent(Student nowyStudent) {
        repozytorium.save(nowyStudent);
        return "home.jsp";
    }

    @RequestMapping("/display")
    public ModelAndView display() {
        ModelAndView model = new ModelAndView("display.jsp");
        model.addObject("imie", "Anita");
        model.addObject("rola", "kursant");
        model.addObject("komunikat", "Witam Was wszystkich. ");
        return model;
    }

    @RequestMapping("/displayAllStudents")
    public ModelAndView displayAllStudents() {
        Iterable<Student> lista = repozytorium.findAll();
        ModelAndView model = new ModelAndView("displayAllStudents.jsp");
        model.addObject("studenci", lista);
        return model;
    }
    @RequestMapping("/showStudent")
    public ModelAndView getProduct(@RequestParam int id) {
        try {
            Optional<Student> optionalStudent = repozytorium.findById(id);
            if (optionalStudent.isPresent()== false)
                throw new Exception("student id" +  id);
            ModelAndView mv = new ModelAndView("showStudent.jsp");
            Student student = optionalStudent.get();
            mv.addObject("student", student);
            return mv;
        }
        catch(Exception pe) {
            ModelAndView mv = new ModelAndView("error.jsp");
            return mv;
        }
    }

}
