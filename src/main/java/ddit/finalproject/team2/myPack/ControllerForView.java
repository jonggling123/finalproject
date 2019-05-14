package ddit.finalproject.team2.myPack;

import java.io.IOException;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class ControllerForView {
		@GetMapping("/student")
		public String chooseMain() throws IOException{
			return "student/mainPage";
		}
		
		@GetMapping("/professor")
		public String sda(){
			return "professor/professorMain";
		}
		
		@GetMapping("/login")
		public String login(){
			return "common/login";
		}
}
