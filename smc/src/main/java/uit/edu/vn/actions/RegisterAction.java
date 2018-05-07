package uit.edu.vn.actions;
import uit.edu.vn.models.*;
import com.opensymphony.xwork2.ActionSupport;

public class RegisterAction extends ActionSupport {
	
	private Customer customer;

	@Override
	public String execute() throws Exception {
		//customer = new Customer();
		return SUCCESS;
	}

	public Customer getCustomer() {
		return customer;
	}

	public void setCustomer(Customer customer) {
		this.customer = customer;
	}
	
}
