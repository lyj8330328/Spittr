package myspittr.web;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller // ����Ϊһ��������
public class HomeController {

	@RequestMapping(value = "home", method = RequestMethod.GET) // ����GET����
	public String home() {
		return "home"; // ��ͼ��Ϊhome
	}

}
