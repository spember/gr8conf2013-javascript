package co.cantina.gr8conf

class AlbumController {

    def index() {}

    def detail() {
        print Album.list()
        [album: Album.get(params?.id)]
    }
}
