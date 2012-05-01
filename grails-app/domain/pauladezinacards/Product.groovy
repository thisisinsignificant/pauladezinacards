package pauladezinacards

class Product {

    static constraints = {
		title(blank: false, nullable: false)
		description(blank: false, nullable: false)
		price(blank: false, nullable: false)
    }
	
	String 	title, 
			description
	float price
}
