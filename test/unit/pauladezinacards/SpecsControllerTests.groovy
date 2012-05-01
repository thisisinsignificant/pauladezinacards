package pauladezinacards



import org.junit.*
import grails.test.mixin.*

@TestFor(SpecsController)
@Mock(Specs)
class SpecsControllerTests {


    def populateValidParams(params) {
      assert params != null
      // TODO: Populate valid properties like...
      //params["name"] = 'someValidName'
    }

    void testIndex() {
        controller.index()
        assert "/specs/list" == response.redirectedUrl
    }

    void testList() {

        def model = controller.list()

        assert model.specsInstanceList.size() == 0
        assert model.specsInstanceTotal == 0
    }

    void testCreate() {
       def model = controller.create()

       assert model.specsInstance != null
    }

    void testSave() {
        controller.save()

        assert model.specsInstance != null
        assert view == '/specs/create'

        response.reset()

        populateValidParams(params)
        controller.save()

        assert response.redirectedUrl == '/specs/show/1'
        assert controller.flash.message != null
        assert Specs.count() == 1
    }

    void testShow() {
        controller.show()

        assert flash.message != null
        assert response.redirectedUrl == '/specs/list'


        populateValidParams(params)
        def specs = new Specs(params)

        assert specs.save() != null

        params.id = specs.id

        def model = controller.show()

        assert model.specsInstance == specs
    }

    void testEdit() {
        controller.edit()

        assert flash.message != null
        assert response.redirectedUrl == '/specs/list'


        populateValidParams(params)
        def specs = new Specs(params)

        assert specs.save() != null

        params.id = specs.id

        def model = controller.edit()

        assert model.specsInstance == specs
    }

    void testUpdate() {
        controller.update()

        assert flash.message != null
        assert response.redirectedUrl == '/specs/list'

        response.reset()


        populateValidParams(params)
        def specs = new Specs(params)

        assert specs.save() != null

        // test invalid parameters in update
        params.id = specs.id
        //TODO: add invalid values to params object

        controller.update()

        assert view == "/specs/edit"
        assert model.specsInstance != null

        specs.clearErrors()

        populateValidParams(params)
        controller.update()

        assert response.redirectedUrl == "/specs/show/$specs.id"
        assert flash.message != null

        //test outdated version number
        response.reset()
        specs.clearErrors()

        populateValidParams(params)
        params.id = specs.id
        params.version = -1
        controller.update()

        assert view == "/specs/edit"
        assert model.specsInstance != null
        assert model.specsInstance.errors.getFieldError('version')
        assert flash.message != null
    }

    void testDelete() {
        controller.delete()
        assert flash.message != null
        assert response.redirectedUrl == '/specs/list'

        response.reset()

        populateValidParams(params)
        def specs = new Specs(params)

        assert specs.save() != null
        assert Specs.count() == 1

        params.id = specs.id

        controller.delete()

        assert Specs.count() == 0
        assert Specs.get(specs.id) == null
        assert response.redirectedUrl == '/specs/list'
    }
}
