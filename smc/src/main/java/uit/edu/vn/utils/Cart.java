package uit.edu.vn.utils;

import java.util.HashMap;
import java.util.Map;
import java.util.Set;

import uit.edu.vn.models.*;

public class Cart {

    private final Map<SanPham, Integer> cart = new HashMap<SanPham, Integer>();

    public Cart() {
    }

    public void addProduct(SanPham sp) {
        Integer amount = cart.get(sp);
        cart.put(sp, amount == null?1:(amount + 1));   
    }
    
    public void delete(SanPham sp) {
        cart.remove(sp,1);
        System.out.println("delete cart");
    }

    public Map<SanPham, Integer> getProducts() {
        return cart;
    }

    public float getTotalPrice() {
        float total = 0;

        Set<SanPham> keys = cart.keySet();
        for (SanPham product : keys) {
            total += product.getGiaBan() * cart.get(product);
        }
        
        return total;
    }

}
