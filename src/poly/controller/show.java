package poly.controller;

import java.util.List;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import poly.entity.LoaiSach;
import poly.entity.Sach;
import poly.entity.danhMuc;

@Transactional
@Controller
public class show {
	@Autowired
	SessionFactory factory;
	
	@RequestMapping(value = "/show", method = RequestMethod.GET)
	public String index(ModelMap model) {
		Session session = factory.getCurrentSession();
		String hql = "FROM Sach";
		Query query = session.createQuery(hql);
		List<Sach> list = query.list();
		model.addAttribute("sach", list);
		return "showForm";
	}
	@RequestMapping(value="/UpdateSach", method=RequestMethod.GET)
	public String add(ModelMap model) {
		return "List";
	}
	@RequestMapping(value="/UpdateSach", method=RequestMethod.POST)
	 public String themsach(ModelMap model,
				@RequestParam("MaSach") String masach,
				@RequestParam("TenSach") String tensach,
				@RequestParam("Gia") Float gia,
				@RequestParam("NamXuatBan") Integer namxuatban,
				@RequestParam("SoLuong") Integer soluong,
				@RequestParam("TheLoai") Integer theloai){
		 Session session = factory.getCurrentSession();
		 LoaiSach ls = (LoaiSach) session.get(LoaiSach.class, theloai);
		 
		 Sach s=new Sach();
		 s.setMaSach(masach);
		 s.setTenSach(tensach);
		 s.setGia(gia);
		 s.setNamXuatBan(namxuatban);
		 s.setSoLuong(soluong);
		 s.setLoaiSach(ls);
		 session = factory.openSession();
		 Transaction t = session.beginTransaction();
		 session.save(s);
		 t.commit();
		 
		 	Session session2 = factory.getCurrentSession();
			String hql2 = "FROM Sach";
			Query query2 = session2.createQuery(hql2);
			List<Sach> list2 = query2.list();
			model.addAttribute("Sach", list2);
		 return "List";
	 }
}
