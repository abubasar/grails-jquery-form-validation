package jquery

class CustomerController {

    def addCustomer(){
	
		Customer customer
		
		
		customer=new Customer()
		
		customer.firstName=params.firstName
		customer.lastName=params.lastName
		customer.password=params.password
		
		customer.save(flush:true)
		
	}
        
    def list(){
        def customers=Customer.list()
        [listCustomers:customers]
        
    }
}
