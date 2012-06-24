package pauladezinacards

class Style {
	
    static constraints = {
		title(blank: false, nullable: false)
		image(blank: false, nullable: false)
		thumbnailImage(blank: false, nullable: false)
    }
	
	String 	title,
			image,
			thumbnailImage
	
}
