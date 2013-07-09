package co.cantina.gr8conf

import grails.converters.JSON

class ArtistController {

    def list() {

        Thread.sleep(1500)

        if (request.xhr) {
            render Artist.list() as JSON
            return true
        }
        [artists: Artist.list()]
    }

    def detail() {
        Thread.sleep(1500)
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
