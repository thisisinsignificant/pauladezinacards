package pauladezinacards

class Product {

	static hasMany = [specs: Specs]
	
    static constraints = {
		title(blank: false, nullable: false)
		description(blank: false, nullable: false)
		image(blank: false, nullable: false)
		price(blank: false, nullable: false)
    }
	
	String 	title, 
			description,
			image
	float price
}
