package poly.entity;

import java.util.Collection;

import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.OneToMany;
import javax.persistence.Table;

@Entity
@Table(name="danhMuc")
public class danhMuc {
	@Id
	@GeneratedValue
	private int id;
	private String tenDanhMuc;
	@OneToMany(mappedBy = "idDanhMuc",fetch=FetchType.EAGER)
	private Collection<baiViet> baiViet;
	public danhMuc() {
		
	}
	public danhMuc(int id, String tenDanhMuc, Collection<poly.entity.baiViet> baiViet) {
		super();
		this.id = id;
		this.tenDanhMuc = tenDanhMuc;
		this.baiViet = baiViet;
	}
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getTenDanhMuc() {
		return tenDanhMuc;
	}
	public void setTenDanhMuc(String tenDanhMuc) {
		this.tenDanhMuc = tenDanhMuc;
	}
	public Collection<baiViet> getBaiViet() {
		return baiViet;
	}
	public void setBaiViet(Collection<baiViet> baiViet) {
		this.baiViet = baiViet;
	}
	
}
