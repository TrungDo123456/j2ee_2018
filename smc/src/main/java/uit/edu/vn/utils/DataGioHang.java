package uit.edu.vn.utils;

import java.sql.SQLException;
import java.util.HashMap;
import java.util.Map;
import java.util.Set;

import uit.edu.vn.models.*;


public class DataGioHang {

    private Map<SanPham, Integer> giohang = new HashMap<SanPham, Integer>();

    public DataGioHang() {
    }

    public void addProduct(SanPham sp) {
        Integer amount = giohang.get(sp);
        giohang.put(sp, amount == null?1:(amount + 1));   
    }
    

	public void delete(int id) throws SQLException {
    	DataSanPham sp = new DataSanPham();
    	if (this.giohang.containsKey(sp.getProductById(id))) {
    		giohang.remove(sp.getProductById(id));
    		
    		
    	}
        
        
    }

    public Map<SanPham, Integer> getProducts() {
        return giohang;
    }

    public float getTotalPrice() {
        float total = 0;

        Set<SanPham> keys = giohang.keySet();
        for (SanPham product : keys) {
            total += product.getGiaBan() * giohang.get(product);
        }
        
        return total;
    }

}
