package poly.controller;

import java.io.File;
import java.io.IOException;
import java.util.List;

import javax.servlet.ServletContext;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.ui.Model;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;

import com.sun.org.apache.xpath.internal.compiler.Keywords;

import poly.entity.LoaiSach;
import poly.entity.Sach;
import poly.entity.baiViet;
import poly.entity.danhMuc;
import ptithcm.bean.bien;

@Transactional
@Controller
public class adminController {
	private static final String Keywords = null;
	@Autowired
	bien b;
	@Autowired
	SessionFactory factory;

	@ModelAttribute("b")
	public bien getbien() {
		return b;
	}

	@RequestMapping(value = "/trangchu", method = RequestMethod.GET)
	public String index(ModelMap model) {
		Session session = factory.getCurrentSession();
		String hql = "FROM danhMuc";
		Query query = session.createQuery(hql);
		List<danhMuc> list = query.list();
		String hql1 = "FROM baiViet";
		Query query1 = session.createQuery(hql1);
		List<baiViet> listBV = query1.list();
		model.addAttribute("bv", listBV);
		model.addAttribute("dm", list);
		return "home";
	}

	@RequestMapping(value = "/admin", method = RequestMethod.GET)
	public String admin(ModelMap model) {
		if (b.getBien().equals("1")) {
			Session session = factory.getCurrentSession();
			String hql = "FROM danhMuc";
			Query query = session.createQuery(hql);
			List<danhMuc> list = query.list();
			model.addAttribute("admin", list);
			return "admin";
		} else {
			return "redirect:/login.htm";
		}
	}

	@RequestMapping(value = "/addDanhMuc", method = RequestMethod.GET)
	public String addDanhMuc(ModelMap model) {
		if (b.getBien().equals("1")) {
			Session session = factory.getCurrentSession();
			String hql = "FROM danhMuc";
			Query query = session.createQuery(hql);
			List<danhMuc> list = query.list();
			model.addAttribute("adddm", list);
			return "addDanhMuc";
		} else {
			return "redirect:/login.htm";
		}
	}

	@Autowired
	ServletContext context;

	@RequestMapping(value = "/addDanhMuc1", method = RequestMethod.POST)
	public String apply(ModelMap model, @RequestParam("tenDanhMuc") String tenDanhMuc) {
		System.out.println("Ten Danh muc : " + tenDanhMuc);
		Session session = factory.getCurrentSession();
		//String hql = "FROM danhMuc dm WHERE dm.tenDanhMuc ='" +tenDanhMuc+"'";
		String hql = "FROM danhMuc dm WHERE dm.tenDanhMuc =:x";
		Query query = session.createQuery(hql).setParameter("x",tenDanhMuc);
		List<danhMuc> list = query.list();
		if (list.size() == 1) {
			model.addAttribute("message", "Tên danh mục  này đã tồn tại! Vui lòng nhập tên danh mục khác!!!");
			System.out.println("loi");
		}
		if(list.size() == 0) {
			System.out.println("kloi");
			try {
				danhMuc dm=new danhMuc();
				dm.setTenDanhMuc(tenDanhMuc);
				Session session1 = factory.openSession();
				Transaction t = session1.beginTransaction();
				session1.save(dm);
				model.addAttribute("message", "Thêm thành công!!!");
				t.commit();
			} catch (Exception e) {
				// TODO: handle exception
			}
		}
		return "addDanhMuc";
	}

	@RequestMapping(value = "/updateDanhMuc/{id}", method = RequestMethod.GET)
	public String edit(ModelMap model, @PathVariable("id") int id, @ModelAttribute("danhMuc") danhMuc danhMuc) {

		if (b.getBien().equals("1")) {
			danhMuc danhMucs = this.getId(id);
			model.addAttribute("danhMucUpdate", danhMucs);
			return "updateDanhMuc";
		} else {
			return "redirect:/login.htm";
		}
	}

	@RequestMapping(value = "/updateDanhMuc1", method = RequestMethod.POST)
	public String createOrUpdate(ModelMap model, @ModelAttribute("danhMuc") danhMuc danhMuc) {
		Session session = factory.openSession();
		Transaction t = session.beginTransaction();
		try {
			session.update(danhMuc);
			t.commit();
		} catch (Exception e) {
			t.rollback();
		} finally {
			session.flush();
			session.close();
		}
		return "redirect:/trangchu.htm";
	}


	@RequestMapping(value = "/deleteDanhMuc/{id}", method = RequestMethod.GET)
	public String delete(ModelMap model, @PathVariable("id") int id) {
		if (b.getBien().equals("1")) {
			danhMuc danhmuc;
			Session session = factory.getCurrentSession();
			danhmuc = (danhMuc) session.load(danhMuc.class, id);
			System.out.println(danhmuc.getTenDanhMuc());
			String hql = "FROM baiViet bv WHERE bv.idDanhMuc='" + String.valueOf(id) + "'";
			Query query = session.createQuery(hql);
			List<baiViet> listBv = query.list();
			if (listBv.isEmpty()) {
				session.delete(danhmuc);
				session.flush();
				return "redirect:/trangchu.htm";

			} else {
				model.addAttribute("message", "Không xóa được danh mục này");
				return  "admin";
			}
		} else {
			return "redirect:/login.htm";
		}

	}

	public danhMuc getId(int id) {
		System.out.print(id);
		Session session = factory.getCurrentSession();
		String hql = "FROM danhMuc dm WHERE dm.id = :id";
		Query query = session.createQuery(hql).setParameter("id", id);
		List<danhMuc> list = query.list();
		return list.size() > 0 ? list.get(0) : null;
	}

	@RequestMapping("/updateNews/{id}")
	public String edit(ModelMap model, @PathVariable("id") int id) {
		if (b.getBien().equals("1")) {
			Session session = factory.getCurrentSession();
			baiViet baiviet = (baiViet) session.get(baiViet.class, id);
			String hql = "FROM danhMuc";
			Query query = session.createQuery(hql);
			List<danhMuc> list = query.list();
			model.addAttribute("dm", list);
			model.addAttribute("baiviet", baiviet);
			return "updateNews";
		}
		return "redirect:/login.htm";
	}

	@RequestMapping(value = "/updateNews/{id}", method = RequestMethod.POST)
	public String edit(ModelMap model,@PathVariable("id") int id, @RequestParam("tenTinTuc") String tenTinTuc,
			@RequestParam("moTaNho") String moTaNho, @RequestParam("moTaChiTiet") String moTaChiTiet,
			@RequestParam("image") MultipartFile image, @RequestParam("idDanhMuc") Integer idDanhMuc) {
		Session session = factory.getCurrentSession();
		baiViet baiviet = (baiViet) session.get(baiViet.class, id);
		danhMuc dm = (danhMuc) session.get(danhMuc.class, idDanhMuc);
		try {
			String photoPath = context.getRealPath("/resources/images/" + image.getOriginalFilename());
			image.transferTo(new File(photoPath));
			String a = "/resources/images/" + image.getOriginalFilename();
			if (!tenTinTuc.equals("")) {
				baiviet.setTenTinTuc(tenTinTuc);
			}
			if (!moTaNho.equals("")) {
				baiviet.setMoTaNho(moTaNho);
			}
			if (!moTaChiTiet.equals("")) {
				baiviet.setMoTaChiTiet(moTaChiTiet);
			}
			if (!idDanhMuc.equals("")) {
				baiviet.setIdDanhMuc(dm);
			}
			if (!a.equals("")) {
				baiviet.setImage(a);
			}
			return "redirect:/trangchu.htm";
		} catch (Exception e) {
			model.addAttribute("message", "lỗi lưu file!");
		}
		session = factory.openSession();
		Transaction t = session.beginTransaction();
		session.update(baiviet);
		t.commit();
		return "home";
	}

	@RequestMapping(value = "/addNews", method = RequestMethod.GET)
	public String addNews(ModelMap model) {
		if (b.getBien().equals("1")) {
			Session session = factory.getCurrentSession();
			String hql = "FROM danhMuc";
			Query query = session.createQuery(hql);
			List<danhMuc> list = query.list();
			String hql1 = "FROM baiViet";
			Query query1 = session.createQuery(hql1);
			List<baiViet> listBV = query1.list();
			model.addAttribute("bv", listBV);
			model.addAttribute("dm", list);
			return "addNews";
		} else {
			return "redirect:/login.htm";
		}

	}

	@RequestMapping(value = "/addNews1", method = RequestMethod.POST)
	public String apply(ModelMap model, @RequestParam("tenTinTuc") String tenTinTuc,
			@RequestParam("moTaNho") String moTaNho, @RequestParam("image") MultipartFile image,
			@RequestParam("moTaChiTiet") String moTaChiTiet, @RequestParam("idDanhMuc") Integer idDanhMuc) {
		Session session = factory.getCurrentSession();
		String hql = "FROM baiViet bv WHERE bv.tenTinTuc= :x";
		Query query = session.createQuery(hql).setParameter("x",tenTinTuc);
		List<baiViet> list = query.list();
		if (list.size() == 1) {
			model.addAttribute("message", "Tên tin tức này đã tồn tại! Vui lòng nhập tên bài viết khác!!!");
			
		}
		
			if(list.size()==0) {
				if(image.isEmpty()) {
					model.addAttribute("message", "Vui long chon file!!!");
				}else {
					try {
						String photoPath = context.getRealPath("/resources/images/" + image.getOriginalFilename());
						image.transferTo(new File(photoPath));
						String a = "/resources/images/" + image.getOriginalFilename();
						danhMuc dm = (danhMuc) session.get(danhMuc.class, idDanhMuc);
						baiViet bv = new baiViet();
						bv.setTenTinTuc(tenTinTuc);
						bv.setMoTaNho(moTaNho);
						bv.setMoTaChiTiet(moTaChiTiet);
						bv.setImage(a);
						bv.setIdDanhMuc(dm);
						Session session1 = factory.openSession();
						Transaction t = session1.beginTransaction();
						session1.save(bv);
						t.commit();
						return "admin";
					}catch(Exception e) {
						model.addAttribute("message", "Loi luu file!!");
					}
					
				}
			}
			return "redirect:/addNews.htm";
		
	}


	@RequestMapping(value = "deleteNews/{id}", method = RequestMethod.GET)
	public String deleteNews(ModelMap model, @PathVariable("id") int id) {
		if(b.getBien().equals("1")) {
		baiViet baiviet;
		Session session = factory.getCurrentSession();
		baiviet = (baiViet) session.load(baiViet.class, id);
		session.delete(baiviet);
		session.flush();
		return "redirect:/trangchu.htm";
		}
		else {
			return "redirect:/login.htm";
		}
	}

	@RequestMapping("/showList/{id}")
	public String showList(ModelMap model, @PathVariable("id") int id) {
		danhMuc danhmuc;
		Session session = factory.getCurrentSession();
		danhmuc = (danhMuc) session.load(danhMuc.class, id);
		System.out.println(danhmuc.getTenDanhMuc());
		String hql = "FROM baiViet bv WHERE bv.idDanhMuc='" + String.valueOf(id) + "'";
		String hql1 = "FROM danhMuc";
		Query query1 = session.createQuery(hql1);
		Query query = session.createQuery(hql);
		List<baiViet> listBv = query.list();
		List<danhMuc> listDm = query1.list();
		model.addAttribute("bv", listBv);
		model.addAttribute("dm", listDm);
		model.addAttribute("message", danhmuc.getTenDanhMuc());
		return "showList";

	}

	@RequestMapping("/showNews/{id}")
	public String showNews(ModelMap model, @PathVariable("id") int id) {
		Session session = factory.getCurrentSession();
		baiViet baiviet = (baiViet) session.load(baiViet.class, id);
		String hql1 = "FROM danhMuc";
		Query query1 = session.createQuery(hql1);
		List<danhMuc> listDm = query1.list();
		System.out.println(baiviet.getImage());
		model.addAttribute("dm", listDm);
		model.addAttribute("tenTinTuc", baiviet.getTenTinTuc());
		model.addAttribute("image", baiviet.getImage());
		model.addAttribute("moTaNho", baiviet.getMoTaNho());
		model.addAttribute("moTaChiTiet", baiviet.getMoTaChiTiet());
		return "showNews";
	}


	@RequestMapping("/search")
	public String search(ModelMap model,
			@RequestParam("search") String search){
		Session session=factory.getCurrentSession();
		String hql="FROM baiViet WHERE moTaChiTiet LIKE '%"+search+"%'";
		Query query=session.createQuery(hql);
		List<baiViet> list=query.list();
		model.addAttribute("bv", list);
		System.out.println(search);
		return "search";
	}
}
