package in.async.spring.mvc;

import java.util.Map;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

@Controller
@RequestMapping("/")
public class HelloController {

	@RequestMapping("/hello")
	public String sayHelloMvc() {
		return "hello";
	}

	@RequestMapping("/hello1")
	public String sayHelloMvc1(Model model) {
		model.addAttribute("KEY_MSG", "SOME_VALUE_Hello1");
		return "hello";
	}

	@RequestMapping("/hello2")
	public String sayHelloMvc2(ModelMap modelMap) {
		modelMap.addAttribute("KEY_MSG", "SOME_VALUE_Hello2");
		return "hello";
	}

	@RequestMapping("/hello3")
	public ModelAndView sayHelloMvc3() {
		ModelAndView model = new ModelAndView();
		model.setViewName("hello");
		model.addObject("KEY_MSG", "SOME_VALUE_Hello3");
		return model;
	}

	@RequestMapping("/hello4")
	public String sayHelloMvc1(Map<String, Object> model) {
		model.put("KEY_MSG", "SOME_VALUE_Hello4");
		return "hello";
	}

}
