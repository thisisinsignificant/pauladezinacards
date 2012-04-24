package pauladezinacards

class Product {

    static constraints = {
		description(blank: false, nullable: false)
		price(blank: false, nullable: false)
    }
	
	String 	description
	float price
}
