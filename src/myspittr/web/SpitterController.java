package myspittr.web;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.validation.annotation.Validated;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import myspittr.data.SpitterRepositorys;
import myspittr.spitter.Spitter;
import myspittr.validates.SpitterRegisterValidator;

@Controller
@RequestMapping("/spitter")
public class SpitterController {

	private SpitterRepositorys spitterRepository;

	@Autowired // 注入SpitterRepository
	public SpitterController(SpitterRepositorys spitterRepository) {
		this.spitterRepository = spitterRepository;
	}

	// @RequestMapping(value = "/register", method = RequestMethod.GET) //
	// 处理对“/spitter/register”的GET请求
	// public String showRegistrationForm() {
	// return "registerForm2";
	// }

	@RequestMapping(value = "/register", method = RequestMethod.GET) // 处理对“/spitter/register”的GET请求
	public String showRegistrationForm(Model model) {
		model.addAttribute(new Spitter());
		return "registerForm3";
	}

	@RequestMapping(value = "/register", method = RequestMethod.POST)
	public String processRegistration(@Validated Spitter spitter, BindingResult errors) {

		SpitterRegisterValidator spitterValidator = new SpitterRegisterValidator();
		spitterValidator.validate(spitter, errors);
		if (errors.hasErrors()) {
			return "registerForm3"; // 如果校验出现错误，则重新返回表单
		} else {
			spitterRepository.save(spitter); // 保存Spitter
			return "redirect:/spitter/" + spitter.getUsername(); // 重定向到基本信息页

		}

	}

	@RequestMapping(value = "/{username}", method = RequestMethod.GET)
	public String showSpitterProfile(@PathVariable String username, Model model) {
		Spitter spitter = spitterRepository.findByUsername(username);
		model.addAttribute(spitter);
		return "profile";
	}
}
