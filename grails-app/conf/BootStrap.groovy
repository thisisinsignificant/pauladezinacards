import pauladezinacards.Product

class BootStrap {

    def init = { servletContext ->
		
		def product1 = new Product(
			title: 'title1',
			description: 'description1',
			image: 'image1',
			price: 7357
			
			)
		product1.save()
		
		
		
		
    }
    def destroy = {
    }
}

/*
 * 
 * String 	title, 
			description,
			image
	float price
	
	*/
