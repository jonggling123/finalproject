package ddit.finalproject.team2.professor.main;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

@Controller("professorController")
@RequestMapping("/professorMain")
public class MainController {
	
	@GetMapping("notice")
	public ModelAndView goNotice(ModelAndView mv) {
		mv.setViewName("professor/notice");
		return mv;
	}
}
