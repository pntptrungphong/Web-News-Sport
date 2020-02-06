package poly.entity;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.Table;

@Entity
@Table(name="baiViet")
public class baiViet {
	@Id
	@GeneratedValue
	private int id;
	private String tenTinTuc;
	private String moTaNho;
	private String moTaChiTiet;
	private String image;
	@ManyToOne
	@JoinColumn(name="idDanhMuc")
	private danhMuc idDanhMuc;
	
	
	public baiViet() {
		
	}


	public baiViet(int id, String tenTinTuc, String moTaNho, String moTaChiTiet, String image, danhMuc idDanhMuc) {
		super();
		this.id = id;
		this.tenTinTuc = tenTinTuc;
		this.moTaNho = moTaNho;
		this.moTaChiTiet = moTaChiTiet;
		this.image = image;
		this.idDanhMuc = idDanhMuc;
	}


	public int getId() {
		return id;
	}


	public void setId(int id) {
		this.id = id;
	}


	public String getTenTinTuc() {
		return tenTinTuc;
	}


	public void setTenTinTuc(String tenTinTuc) {
		this.tenTinTuc = tenTinTuc;
	}


	public String getMoTaNho() {
		return moTaNho;
	}


	public void setMoTaNho(String moTaNho) {
		this.moTaNho = moTaNho;
	}


	public String getMoTaChiTiet() {
		return moTaChiTiet;
	}


	public void setMoTaChiTiet(String moTaChiTiet) {
		this.moTaChiTiet = moTaChiTiet;
	}


	public String getImage() {
		return image;
	}


	public void setImage(String image) {
		this.image = image;
	}


	public danhMuc getIdDanhMuc() {
		return idDanhMuc;
	}


	public void setIdDanhMuc(danhMuc idDanhMuc) {
		this.idDanhMuc = idDanhMuc;
	}


	
	
}
