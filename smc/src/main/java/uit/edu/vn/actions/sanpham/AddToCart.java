package uit.edu.vn.actions.sanpham;

import java.sql.SQLException;

import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;
import uit.edu.vn.utils.*;
import uit.edu.vn.models.*;

public class AddToCart extends ActionSupport {


    private int newProductId;
   

    public void setNewProductId(int newProductId) {
        this.newProductId = newProductId;
    }

    public String execute() throws Exception {
    	System.out.println(newProductId);
    	
        Cart cart = (Cart) ActionContext.getContext().getSession().get("cart");
        if (cart == null) {
            cart = new Cart();
        }
        SanPham sp = new DataSanPham().getProductById(newProductId);
        if (sp.getId()== 0) {
            return ERROR;
        }
        cart.addProduct(sp);
        ActionContext.getContext().getSession().put("cart", cart);
        
        return SUCCESS;
        
    }
   public String delete() throws SQLException {
	   
	   Cart cart = (Cart) ActionContext.getContext().getSession().get("cart");
	   cart.delete(new DataSanPham().getProductById(newProductId));
	   ActionContext.getContext().getSession().put("cart", cart);
	   System.out.println("moving");
	   return SUCCESS;
   }

}
