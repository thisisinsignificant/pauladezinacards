package pauladezinacards



import org.junit.*
import grails.test.mixin.*

@TestFor(ProductFilterController)
@Mock(ProductFilter)
class ProductFilterControllerTests {


    def populateValidParams(params) {
      assert params != null
      // TODO: Populate valid properties like...
      //params["name"] = 'someValidName'
    }

    void testIndex() {
        controller.index()
        assert "/productFilter/list" == response.redirectedUrl
    }

    void testList() {

        def model = controller.list()

        assert model.productFilterInstanceList.size() == 0
        assert model.productFilterInstanceTotal == 0
    }

    void testCreate() {
       def model = controller.create()

       assert model.productFilterInstance != null
    }

    void testSave() {
        controller.save()

        assert model.productFilterInstance != null
        assert view == '/productFilter/create'

        response.reset()

        populateValidParams(params)
        controller.save()

        assert response.redirectedUrl == '/productFilter/show/1'
        assert controller.flash.message != null
        assert ProductFilter.count() == 1
    }

    void testShow() {
        controller.show()

        assert flash.message != null
        assert response.redirectedUrl == '/productFilter/list'


        populateValidParams(params)
        def productFilter = new ProductFilter(params)

        assert productFilter.save() != null

        params.id = productFilter.id

        def model = controller.show()

        assert model.productFilterInstance == productFilter
    }

    void testEdit() {
        controller.edit()

        assert flash.message != null
        assert response.redirectedUrl == '/productFilter/list'


        populateValidParams(params)
        def productFilter = new ProductFilter(params)

        assert productFilter.save() != null

        params.id = productFilter.id

        def model = controller.edit()

        assert model.productFilterInstance == productFilter
    }

    void testUpdate() {
        controller.update()

        assert flash.message != null
        assert response.redirectedUrl == '/productFilter/list'

        response.reset()


        populateValidParams(params)
        def productFilter = new ProductFilter(params)

        assert productFilter.save() != null

        // test invalid parameters in update
        params.id = productFilter.id
        //TODO: add invalid values to params object

        controller.update()

        assert view == "/productFilter/edit"
        assert model.productFilterInstance != null

        productFilter.clearErrors()

        populateValidParams(params)
        controller.update()

        assert response.redirectedUrl == "/productFilter/show/$productFilter.id"
        assert flash.message != null

        //test outdated version number
        response.reset()
        productFilter.clearErrors()

        populateValidParams(params)
        params.id = productFilter.id
        params.version = -1
        controller.update()

        assert view == "/productFilter/edit"
        assert model.productFilterInstance != null
        assert model.productFilterInstance.errors.getFieldError('version')
        assert flash.message != null
    }

    void testDelete() {
        controller.delete()
        assert flash.message != null
        assert response.redirectedUrl == '/productFilter/list'

        response.reset()

        populateValidParams(params)
        def productFilter = new ProductFilter(params)

        assert productFilter.save() != null
        assert ProductFilter.count() == 1

        params.id = productFilter.id

        controller.delete()

        assert ProductFilter.count() == 0
        assert ProductFilter.get(productFilter.id) == null
        assert response.redirectedUrl == '/productFilter/list'
    }
}
