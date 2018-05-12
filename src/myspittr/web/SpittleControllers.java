package myspittr.web;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.validation.annotation.Validated;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import myspittr.data.SpittleRepositorys;
import myspittr.pubspittle.PubSpittle;
import myspittr.spittle.Spittle;
import myspittr.validates.MessageValidator;

@Controller
public class SpittleControllers {

	private SpittleRepositorys spittleRepository;
	private String username;

	@Autowired
	public SpittleControllers(SpittleRepositorys spittleRepository) { // ×¢ÈëSpittleRepository
		this.spittleRepository = spittleRepository;
	}

	@RequestMapping(value = "/spittles", method = RequestMethod.GET)
	public List<Spittle> spittles(@RequestParam(value = "username") String username, Model model) {
		this.username = username;
		if (username != "") {
			this.username = username;
			model.addAttribute(new PubSpittle());
			return spittleRepository.findSpittles();
		} else {
			return null;
		}
	}

	@RequestMapping(value = "/spittles/spittle", method = RequestMethod.GET)
	public String singleSpittle(@RequestParam(value = "id") Long id, Model model) {
		model.addAttribute("spittle", spittleRepository.findOne(id));
		return "spittle";
	}

	@RequestMapping(value = "/spittles2", method = RequestMethod.GET)
	public List<Spittle> spittles2() {
		return spittleRepository.findSpittles();
	}

	@RequestMapping(value = "/spittles", method = RequestMethod.POST)
	public String addSpittle(@Validated PubSpittle spittle, BindingResult errors) {

		MessageValidator mValidator = new MessageValidator();
		mValidator.validate(spittle, errors);
		if (errors.hasErrors()) {

			return null;

		} else {
			spittleRepository.save(spittle);
			return "redirect:/spittles?username=" + username;
		}

	}

}
