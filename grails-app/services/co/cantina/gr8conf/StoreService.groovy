package co.cantina.gr8conf

class StoreService {

    /**
     * Builds the store information based on some input data. Creates Artists, Albums, and joins them together.
     *
     * I realize I could have used the fixtures plugin.
     *
     * @param storeData
     */
    def buildStore(List storeData) {
        Artist artist
        Album album
        storeData.each { artistData ->
            def albumData = artistData.remove("albums")
            artist = Artist.findOrCreateWhere(artistData)
            artist.description = "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vivamus sit amet porta nisi. Nunc accumsan odio enim, sed vestibulum sapien pulvinar et. Maecenas tincidunt quam at mauris sagittis bibendum. Quisque nec cursus nulla. Phasellus placerat feugiat vehicula. Aliquam id eleifend nibh. Phasellus dapibus neque velit, nec malesuada sem ornare eu. Fusce mattis, libero euismod tempus malesuada, dui turpis rutrum sem, nec auctor dolor mauris vel lorem. Quisque elementum leo sit amet nibh suscipit, eu tincidunt erat tincidunt.\n" +
                    "\n" +
                    "Ut ultrices felis eu ullamcorper vestibulum. Vestibulum sem augue, interdum a dolor ac, accumsan vehicula diam. Nulla sit amet orci eget neque malesuada ornare eu nec sapien. Fusce elementum augue et nulla semper, vitae consectetur risus consectetur. Ut tempus tellus nisi, ut laoreet tortor porttitor non. Nunc sit amet dolor lobortis, egestas mauris sit amet, bibendum nibh. Ut dictum sem mi, vel posuere elit gravida vitae. Fusce a felis purus. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Morbi eu cursus arcu."
            artist.save()

            albumData.each {
                int time = it.remove("m")*60 + it.remove("s")
                it["runningTime"] = time
                album = Album.findOrCreateWhere(it)
                artist.addToAlbums(album)
                album.artist = artist
                album.save()
            }

        }
    }
}
