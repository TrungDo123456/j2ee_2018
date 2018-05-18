package uit.edu.vn.actions.sanpham;

import java.util.Map;

import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;
import uit.edu.vn.models.*;
import uit.edu.vn.utils.*;

@SuppressWarnings("serial")
public class ViewCart extends ActionSupport {

    private Map<SanPham, Integer> products;
    private float total;
    @Override
    public String execute() throws Exception {
        Cart cart = (Cart) ActionContext.getContext().getSession().get("cart");
        if (cart == null) {
            return ERROR;
        }
        
        products = cart.getProducts();
        total = cart.getTotalPrice();
        return SUCCESS;
    }

    public Map<SanPham, Integer> getProducts() {
        return products;
    }

    public float getTotal() {
        return total;
    }
}