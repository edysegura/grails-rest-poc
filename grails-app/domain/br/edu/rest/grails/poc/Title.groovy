package br.edu.rest.grails.poc

import grails.rest.Resource

@Resource(uri='/titles', formats=['json', 'xml'])
class Title {

    Long id
    String name
    Integer year
    String synopsis

    static constraints = {
        name blank: false
        year blank: false
        synopsis nullable : true
    }

    static objectMarshaller = {
        return [
            id			: it.id,
            name	    : it.name,
            year        : it.year,
            synopsis    : it.synopsis
        ]
    }
}
