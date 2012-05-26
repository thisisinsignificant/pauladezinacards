package pauladezinacards

class ProductFilter {
	
	static hasOne = [tag:Tag, product:Product]
	
    static constraints = {
		product(blank: false, nullable:false)
		tag(blank:false, nullable: false)
    }
}
