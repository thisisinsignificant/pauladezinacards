package pauladezinacards

import org.springframework.dao.DataIntegrityViolationException

class SpecsController {

    static allowedMethods = [save: "POST", update: "POST"]

    def index() {
        redirect(action: "list", params: params)
    }

    def list() {
        params.max = Math.min(params.max ? params.int('max') : 10, 100)
        [specsInstanceList: Specs.list(params), specsInstanceTotal: Specs.count()]
    }

    def create() {
        [specsInstance: new Specs(params)]
    }

    def save() {
        def specsInstance = new Specs(params)
        if (!specsInstance.save(flush: true)) {
            render(view: "create", model: [specsInstance: specsInstance])
            return
        }

		flash.message = message(code: 'default.created.message', args: [message(code: 'specs.label', default: 'Specs'), specsInstance.id])
        redirect(action: "show", id: specsInstance.id)
    }

    def show() {
        def specsInstance = Specs.get(params.id)
        if (!specsInstance) {
			flash.message = message(code: 'default.not.found.message', args: [message(code: 'specs.label', default: 'Specs'), params.id])
            redirect(action: "list")
            return
        }

        [specsInstance: specsInstance]
    }

    def edit() {
        def specsInstance = Specs.get(params.id)
        if (!specsInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'specs.label', default: 'Specs'), params.id])
            redirect(action: "list")
            return
        }

        [specsInstance: specsInstance]
    }

    def update() {
        def specsInstance = Specs.get(params.id)
        if (!specsInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'specs.label', default: 'Specs'), params.id])
            redirect(action: "list")
            return
        }

        if (params.version) {
            def version = params.version.toLong()
            if (specsInstance.version > version) {
                specsInstance.errors.rejectValue("version", "default.optimistic.locking.failure",
                          [message(code: 'specs.label', default: 'Specs')] as Object[],
                          "Another user has updated this Specs while you were editing")
                render(view: "edit", model: [specsInstance: specsInstance])
                return
            }
        }

        specsInstance.properties = params

        if (!specsInstance.save(flush: true)) {
            render(view: "edit", model: [specsInstance: specsInstance])
            return
        }

		flash.message = message(code: 'default.updated.message', args: [message(code: 'specs.label', default: 'Specs'), specsInstance.id])
        redirect(action: "show", id: specsInstance.id)
    }

    def delete() {
        def specsInstance = Specs.get(params.id)
        if (!specsInstance) {
			flash.message = message(code: 'default.not.found.message', args: [message(code: 'specs.label', default: 'Specs'), params.id])
            redirect(action: "list")
            return
        }

        try {
            specsInstance.delete(flush: true)
			flash.message = message(code: 'default.deleted.message', args: [message(code: 'specs.label', default: 'Specs'), params.id])
            redirect(action: "list")
        }
        catch (DataIntegrityViolationException e) {
			flash.message = message(code: 'default.not.deleted.message', args: [message(code: 'specs.label', default: 'Specs'), params.id])
            redirect(action: "show", id: params.id)
        }
    }
}
