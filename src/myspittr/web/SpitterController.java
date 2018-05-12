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

	@Autowired // ע��SpitterRepository
	public SpitterController(SpitterRepositorys spitterRepository) {
		this.spitterRepository = spitterRepository;
	}

	// @RequestMapping(value = "/register", method = RequestMethod.GET) //
	// ����ԡ�/spitter/register����GET����
	// public String showRegistrationForm() {
	// return "registerForm2";
	// }

	@RequestMapping(value = "/register", method = RequestMethod.GET) // ����ԡ�/spitter/register����GET����
	public String showRegistrationForm(Model model) {
		model.addAttribute(new Spitter());
		return "registerForm3";
	}

	@RequestMapping(value = "/register", method = RequestMethod.POST)
	public String processRegistration(@Validated Spitter spitter, BindingResult errors) {

		SpitterRegisterValidator spitterValidator = new SpitterRegisterValidator();
		spitterValidator.validate(spitter, errors);
		if (errors.hasErrors()) {
			return "registerForm3"; // ���У����ִ��������·��ر�
		} else {
			spitterRepository.save(spitter); // ����Spitter
			return "redirect:/spitter/" + spitter.getUsername(); // �ض��򵽻�����Ϣҳ

		}

	}

	@RequestMapping(value = "/{username}", method = RequestMethod.GET)
	public String showSpitterProfile(@PathVariable String username, Model model) {
		Spitter spitter = spitterRepository.findByUsername(username);
		model.addAttribute(spitter);
		return "profile";
	}
}
