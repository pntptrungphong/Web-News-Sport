package poly.entity;

import java.util.Collection;

import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.Id;
import javax.persistence.OneToMany;
import javax.persistence.Table;

@Entity
@Table(name="LoaiSach")
public class LoaiSach {
	
	@Id
	private int IdLoai;
	private String TenLoai;
	@OneToMany(mappedBy = "LoaiSach",fetch=FetchType.EAGER)
	private Collection<Sach> Sach;
	public int getIdLoai() {
		return IdLoai;
	}
	public void setIdLoai(int idLoai) {
		IdLoai = idLoai;
	}
	public String getTenLoai() {
		return TenLoai;
	}
	public void setTenLoai(String tenLoai) {
		TenLoai = tenLoai;
	}
	public Collection<Sach> getSach() {
		return Sach;
	}
	public void setSach(Collection<Sach> sach) {
		Sach = sach;
	}
	
	

}
