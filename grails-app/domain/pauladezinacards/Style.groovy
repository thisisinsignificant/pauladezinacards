package pauladezinacards

class Style {
	
	static hasMany = [productFilter: ProductFilter]
	static belongsTo = [product: Product]
	
    static constraints = {
		title(blank: false, nullable: false)
		image(blank: false, nullable: false)
		productFilter()
    }
	
	String 	title,
			image

	
}
