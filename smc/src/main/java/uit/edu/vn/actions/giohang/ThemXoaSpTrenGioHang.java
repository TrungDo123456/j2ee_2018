package uit.edu.vn.actions.giohang;

import java.sql.SQLException;

import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;
import uit.edu.vn.utils.*;
import uit.edu.vn.models.*;

@SuppressWarnings("serial")
public class ThemXoaSpTrenGioHang extends ActionSupport {


    private int newProductId;
    private int removeProductId;

    public int getRemoveProductId() {
		return removeProductId;
	}

	public void setRemoveProductId(int removeProductId) {
		this.removeProductId = removeProductId;
	}

	public void setNewProductId(int newProductId) {
        this.newProductId = newProductId;
    }

    public String execute() throws Exception {
    	
    	
        DataGioHang giohang = (DataGioHang) ActionContext.getContext().getSession().get("giohang");
        if (giohang == null) {
            giohang = new DataGioHang();
        }
        SanPham sp = new DataSanPham().getProductById(newProductId);
        if (sp.getId()== 0) {
            return ERROR;
        }
        giohang.addProduct(sp);
        ActionContext.getContext().getSession().put("giohang", giohang);
        
        return SUCCESS;
        
    }
    public String delete() throws SQLException {
  	   
  	   DataGioHang giohang = (DataGioHang) ActionContext.getContext().getSession().get("giohang");
  	   giohang.delete(removeProductId);
  	   ActionContext.getContext().getSession().put("giohang", giohang);
  	   return SUCCESS;
     }
}


