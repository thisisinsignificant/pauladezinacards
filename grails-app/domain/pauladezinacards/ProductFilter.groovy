package pauladezinacards

class ProductFilter {
	
	static hasOne = [tag:Tag, style:Style]
	
    static constraints = {
		style(blank: false, nullable:false)
		tag(blank:false, nullable: false)
    }
}
