package pauladezinacards

import grails.converters.JSON

class SpecListController {

    def index() { 
		/*
		 * 
		 * Nothing
		 * 
		 */
		}
	
	def specList(){
		
		def result = [:]
		def seperateSpecs
		
	
		if (seperateSpecs == null){
			result.put("error", "There is no entry corresponding to those parameters")
			render result as JSON
		} else {
		
			seperateSpecs = Specs.findAllByTitle(params.title)
		
		}
		
		result.put('sepSpecs', seperateSpecs)
		render result as JSON
	}
	
}
