import grails.converters.JSON
import br.edu.rest.grails.poc.Title

class BootStrap {

    def init = { servletContext ->
        fakeDataForDev()
        registerObjectMarshallerForJson()
    }

    def destroy = {
    }

    def fakeDataForDev() {
        new Title(name:"The Lord of the Rings: The Fellowship of the Ring", year:2001, synopsis:"Original Motion Picture Soundtrack was released on November 20, 2001").save()
        new Title(name:"The Lord of the Rings: return of King", year:2002, synopsis:"Motion Picture Soundtrack was released on December 10, 2002").save()
        new Title(name:"The Lord of the Rings: The return of King", year:2003, synopsis:"The Return of the King was released on November 25, 2003").save()
    }

    def registerObjectMarshallerForJson() {
        JSON.registerObjectMarshaller(Title, Title.objectMarshaller)
    }
}
