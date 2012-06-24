import pauladezinacards.Product
import pauladezinacards.Category

class BootStrap {

    def init = { servletContext ->
		
		def cat1 = new Category(
			title: 'Category'						
			)
		cat1.save()
		def cat2 = new Category(
			title: 'subCategory',
			parentCategory: Category.findById('1')
			)
		cat2.save()
		
		def prod1 = new Product(
			category: Category.findById('1'),
			title: 'Title',
			description: 'Description',
			price: 212
			)
		prod1.save()
		
		
		
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
