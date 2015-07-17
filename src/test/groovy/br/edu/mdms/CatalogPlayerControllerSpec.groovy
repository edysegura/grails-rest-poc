package br.edu.mdms

import grails.test.mixin.TestFor
import spock.lang.Specification
import grails.converters.JSON
import groovy.json.JsonOutput

/**
 * See the API for {@link grails.test.mixin.web.ControllerUnitTestMixin} for usage instructions
 */
@TestFor(CatalogPlayerController)
class CatalogPlayerControllerSpec extends Specification {

    void "should return a catalog in JSON format"() {
        given:
        controller.params.output = 'json'

        when:
        controller.index()

        then:
        controller.response.status == 200

        and:
        controller.response.json == [
          'id':1,
          'name':'Jurassic Park',
          'file': 'jurassic-park.mpg'
        ]
    }
}
