package co.cantina.gr8conf

import grails.converters.JSON

class ArtistController {

    def list() {

        Thread.sleep(1000)

        if (request.xhr) {
            render Artist.list() as JSON
            return true
        }
        [artists: Artist.list()]
    }

    def detail() {
        Artist artist = Artist.findByName(params.id.toString())
        List albums = Album.findAllByArtist(artist, [sort: "releaseYear"])
        def data = [artist: artist, albums: albums]
        if (request.xhr) {
            render data as JSON
        } else {
            data
        }
    }
}
