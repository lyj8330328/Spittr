package myspittr.web;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller // 声明为一个控制器
public class HomeController {

	@RequestMapping(value = "home", method = RequestMethod.GET) // 处理GET请求
	public String home() {
		return "home"; // 视图名为home
	}

}
