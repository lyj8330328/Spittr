package myspittr.web;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.validation.annotation.Validated;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import myspittr.data.SpitterRepositorys;
import myspittr.loginspitter.LoginSpitter;
import myspittr.validates.SpitterLoginValidator;

@Controller
@RequestMapping("/spitter")
public class LoginController {
	private SpitterRepositorys spitterRepository;

	@Autowired // 注入SpitterRepository
	public LoginController(SpitterRepositorys spitterRepository) {
		this.spitterRepository = spitterRepository;
	}

	@RequestMapping(value = "/login", method = RequestMethod.GET) // 处理对“/spitter/register”的GET请求
	public String showLoginForm(Model model) {
		model.addAttribute(new LoginSpitter());
		return "login";
	}

	@RequestMapping(value = "/login", method = RequestMethod.POST)
	public String processLogin(@Validated LoginSpitter loginspitter, BindingResult errors) {
		// Spitter spitter =
		// spitterRepository.findByUsername(loginspitter.getUsername_l());
		SpitterLoginValidator spitterLoginValidator = new SpitterLoginValidator(spitterRepository);
		spitterLoginValidator.validate(loginspitter, errors);
		if (errors.hasErrors()) {
			return "login";
		} else {

			return "redirect:/spittles?username=" + loginspitter.getUsername_l(); // 重定向到基本信息页
		}
	}
}
