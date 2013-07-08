package co.cantina.gr8conf

class ArtistController {

    def list() {
        println "Sleeping!"
        println Artist.list()
        Thread.sleep(1000)

        [artists: Artist.list()]
    }

    def detail() {
        Artist artist = Artist.findByName(params.id.toString())
        List albums = Album.findAllByArtist(artist, [sort: "releaseYear"])
        [artist: artist, albums: albums]
    }
}
