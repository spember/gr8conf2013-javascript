package co.cantina.gr8conf

import grails.converters.JSON

class AlbumController {

    def index() {}

    def list() {
        Thread.sleep(1500)
        List albums = Album.list(fetch:[artist:"eager"])
        if (request.xhr) {
            render albums as JSON
            return true
        }
        [albums: albums]
    }

    def detail() {
        Thread.sleep(1500)
        Album album = Album.findById(params?.id, [fetch:[artist:"eager"]])
        def data = [album: album, artist: album.artist]
        if (request.xhr) {
            render data as JSON
            return true
        }
        data
    }
}
