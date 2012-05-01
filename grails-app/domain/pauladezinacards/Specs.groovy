package pauladezinacards

class Specs {

    static constraints = {
		title(blank: false)
		value(blank: false)
    }
	
	String title,
		   value
}
