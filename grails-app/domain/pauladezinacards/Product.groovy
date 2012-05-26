package pauladezinacards

class Product {

	static hasMany = [specs: Specs, productFilters: ProductFilter]
	static belongsTo = [category: Category]
	
    static constraints = {
		category(blank:false, nullable: false)
		title(blank: false, nullable: false)
		description(blank: false, nullable: false)
		image(blank: false, nullable: false)
		thumbnailImage(blank:false, nullable: false)
		price(blank: false, nullable: false)
    }
	
	String 	title, 
			description,
			image,
			thumbnailImage
	float price
}
