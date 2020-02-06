package poly.controller;


import java.util.List;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import poly.entity.danhMuc;
import ptithcm.bean.bien;

@Transactional
@Controller
public class DangnhapController {
	@ModelAttribute("b")
	public bien getbien(){
		return b;
	}
	@Autowired
	bien b;
	@Autowired
	SessionFactory factory;
	@RequestMapping(value="/login",method=RequestMethod.GET)
	public String login(ModelMap model) {
		if(b.getBien().equals("1")) {
			System.out.println(b.getBien());
			return "redirect:/admin.htm";
		}
		else {
			System.out.println(b.getBien());
			return "Login";
		
		}
	}
	
	@RequestMapping("/logout")
	public String dangxuat(ModelMap model)
	{b.setBien("0");
	System.out.println(b.getBien());
		return "redirect:/trangchu.htm";
	}

	@RequestMapping(value="/login",method = RequestMethod.POST)
	public String index(ModelMap model,@RequestParam("username") String username,
			@RequestParam("password") String password){
		if(username.equals("phamnguyentrungphong166@gmail.com")&&password.equals("12345")){
			b.setBien("1");
			Session session =factory.getCurrentSession();
			String hql = "FROM danhMuc";
			Query query = session.createQuery(hql);
			List<danhMuc> list = query.list();
			model.addAttribute("admin", list);
			System.out.println(b.getBien());
			return "redirect:/admin.htm";
		}
		else{
			model.addAttribute("message", "Sai Tên đăng nhập hoặc Mật khẩu");
			return "Login";
		}
	}

	
}