package pauladezinacards

class Style {
	
	static hasMany = [productFilter: ProductFilter]
	
    static constraints = {
		title(blank: false, nullable: false)
		image(blank: false, nullable: false)
		thumbnailImage(blank: false, nullable: false)
		productFilter()
    }
	
	String 	title,
			image,
			thumbnailImage
	
}
