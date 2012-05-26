package pauladezinacards

class Tag {
	
	static hasMany = [productFilters: ProductFilter]
	
    static constraints = {
		title()
		productFilters()
    }
	
	String title
}
