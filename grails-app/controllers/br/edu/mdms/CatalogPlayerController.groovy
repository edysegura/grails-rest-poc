package br.edu.mdms

import grails.converters.*

class CatalogPlayerController {

    def index() {
      def catalog = [:]

      catalog << ['id':1, 'name':'Jurassic Park', 'file': 'jurassic-park.mpg']

      if(params.output == 'json')
        render catalog as JSON
      else
        render catalog as XML
    }
}
