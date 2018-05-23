package uit.edu.vn.actions.giohang;

import java.sql.SQLException;
import java.util.Map;

import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;
import uit.edu.vn.models.*;
import uit.edu.vn.utils.*;

@SuppressWarnings("serial")
public class XemGioHang extends ActionSupport {

    private Map<SanPham, Integer> products;
    private float total;
    
    @Override
    public String execute() throws Exception {
        DataGioHang giohang = (DataGioHang) ActionContext.getContext().getSession().get("giohang");
        if (giohang == null) {
            return ERROR;
        }
        
        products = giohang.getProducts();
        total = giohang.getTotalPrice();
        return SUCCESS;
    }

    public Map<SanPham, Integer> getProducts() {
        return products;
    }

    public float getTotal() {
        return total;
    }
   
}