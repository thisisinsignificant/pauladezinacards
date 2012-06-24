package pauladezinacards

class Product {

	static hasMany = [specs: Specs, styles: Style]
	static belongsTo = [category: Category]
	
    static constraints = {
		category(blank:false, nullable: false)
		title(blank: false, nullable: false)
		description(blank: false, nullable: false)
		price(blank: false, nullable: false)
    }
	
	String 	title, 
			description

	float price
}
