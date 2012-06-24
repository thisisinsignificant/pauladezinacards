package pauladezinacards

import org.springframework.dao.DataIntegrityViolationException

class ProductFilterController {

    static allowedMethods = [save: "POST", update: "POST", delete: "POST"]

    def index() {
        redirect(action: "list", params: params)
    }

    def list() {
        params.max = Math.min(params.max ? params.int('max') : 10, 100)
        [productFilterInstanceList: ProductFilter.list(params), productFilterInstanceTotal: ProductFilter.count()]
    }

    def create() {
        [productFilterInstance: new ProductFilter(params)]
    }

    def save() {
        def productFilterInstance = new ProductFilter(params)
        if (!productFilterInstance.save(flush: true)) {
            render(view: "create", model: [productFilterInstance: productFilterInstance])
            return
        }

		flash.message = message(code: 'default.created.message', args: [message(code: 'productFilter.label', default: 'ProductFilter'), productFilterInstance.id])
        redirect(action: "show", id: productFilterInstance.id)
    }

    def show() {
        def productFilterInstance = ProductFilter.get(params.id)
        if (!productFilterInstance) {
			flash.message = message(code: 'default.not.found.message', args: [message(code: 'productFilter.label', default: 'ProductFilter'), params.id])
            redirect(action: "list")
            return
        }

        [productFilterInstance: productFilterInstance]
    }

    def edit() {
        def productFilterInstance = ProductFilter.get(params.id)
        if (!productFilterInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'productFilter.label', default: 'ProductFilter'), params.id])
            redirect(action: "list")
            return
        }

        [productFilterInstance: productFilterInstance]
    }

    def update() {
        def productFilterInstance = ProductFilter.get(params.id)
        if (!productFilterInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'productFilter.label', default: 'ProductFilter'), params.id])
            redirect(action: "list")
            return
        }

        if (params.version) {
            def version = params.version.toLong()
            if (productFilterInstance.version > version) {
                productFilterInstance.errors.rejectValue("version", "default.optimistic.locking.failure",
                          [message(code: 'productFilter.label', default: 'ProductFilter')] as Object[],
                          "Another user has updated this ProductFilter while you were editing")
                render(view: "edit", model: [productFilterInstance: productFilterInstance])
                return
            }
        }

        productFilterInstance.properties = params

        if (!productFilterInstance.save(flush: true)) {
            render(view: "edit", model: [productFilterInstance: productFilterInstance])
            return
        }

		flash.message = message(code: 'default.updated.message', args: [message(code: 'productFilter.label', default: 'ProductFilter'), productFilterInstance.id])
        redirect(action: "show", id: productFilterInstance.id)
    }

    def delete() {
        def productFilterInstance = ProductFilter.get(params.id)
        if (!productFilterInstance) {
			flash.message = message(code: 'default.not.found.message', args: [message(code: 'productFilter.label', default: 'ProductFilter'), params.id])
            redirect(action: "list")
            return
        }

        try {
            productFilterInstance.delete(flush: true)
			flash.message = message(code: 'default.deleted.message', args: [message(code: 'productFilter.label', default: 'ProductFilter'), params.id])
            redirect(action: "list")
        }
        catch (DataIntegrityViolationException e) {
			flash.message = message(code: 'default.not.deleted.message', args: [message(code: 'productFilter.label', default: 'ProductFilter'), params.id])
            redirect(action: "show", id: params.id)
        }
    }
}
