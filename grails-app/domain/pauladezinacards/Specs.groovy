package pauladezinacards

class Specs {

	static belongsTo = [product: Product]
	
    static constraints = {
		title(blank: false)
		value(blank: false)
		product(nullable:true)
    }
	
	String title,
		   value
}
