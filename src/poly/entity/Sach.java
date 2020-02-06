package poly.entity;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.Table;

@Entity
@Table(name="Sach")
public class Sach {
	
	@Id
	private String MaSach;
	private String TenSach;
	private float Gia;
	private int NamXuatBan;
	private int SoLuong;
	@ManyToOne
	@JoinColumn(name="IdLoai")
	private LoaiSach LoaiSach;
	public String getMaSach() {
		return MaSach;
	}
	public void setMaSach(String maSach) {
		MaSach = maSach;
	}
	public String getTenSach() {
		return TenSach;
	}
	public void setTenSach(String tenSach) {
		TenSach = tenSach;
	}
	public float getGia() {
		return Gia;
	}
	public void setGia(float gia) {
		Gia = gia;
	}
	public int getNamXuatBan() {
		return NamXuatBan;
	}
	public void setNamXuatBan(int namXuatBan) {
		NamXuatBan = namXuatBan;
	}
	public int getSoLuong() {
		return SoLuong;
	}
	public void setSoLuong(int soLuong) {
		SoLuong = soLuong;
	}
	public LoaiSach getLoaiSach() {
		return LoaiSach;
	}
	public void setLoaiSach(LoaiSach loaiSach) {
		LoaiSach = loaiSach;
	}
	
	
	
	
	



}
