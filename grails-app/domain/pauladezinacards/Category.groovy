package pauladezinacards

class Category {

	static hasMany = [products:Product]
	
    static constraints = {
		title(blank: false, nullable: false)
		parentCategory(nullable: true)
		products()
    }
	
	String 	title,
			parentCategory
			
			
}
