import co.cantina.gr8conf.Album
import co.cantina.gr8conf.Artist
import co.cantina.gr8conf.StoreService

class BootStrap {

    StoreService storeService

    def init = { servletContext ->
    	//load some fixtures
        /*
        def pj = Artist.findOrCreateWhere(name:"Pearl Jam", siteUrl: "http://www.pearljam.com")
        if (pj.save()) {
            println "Created ${pj}"
        } else {
            println pj.errors.allErrors
        }
        def nc = Album.findOrCreateWhere(name:"No Code", releaseYear: 1994)
        nc.save()
        def p = Album.findOrCreateWhere(name: "Pearl Jam (self-titled)", releaseYear: 2006)
        p.save()

        pj.addToAlbums(nc)
        pj.addToAlbums(p)
        */

        List storeData = [
                [
                        name: "Pearl Jam",
                        siteURL: "http://www.pearljam.com",
                        homeTown: "Seattle, WA, USA",
                        albums: [
                                [name: "Ten", releaseYear: 1991, m: 53, s: 24 ],
                                [name: "Vs", releaseYear: 1993, m: 46, s: 11],
                                [name: "Vitalogy", releaseYear: 1994, m: 55, s: 30],
                                [name: "No Code", releaseYear: 1996, m:49, s:37]
                        ]
                ],
                [
                        name: "Led Zeppelin",
                        siteURL: "http://www.ledzeppelin.com/",
                        homeTown: "London, England",
                        albums: [
                                [name: "Led Zeppelin", releaseYear: 1969, m: 44, s: 26],
                                [name: "Led Zeppelin II", releaseYear: 1969, m: 41, s: 24],
                                [name: "Led Zeppelin III", releaseYear: 1970, m: 43, s: 04]
                        ]
                ],
                [
                        name: "The Black Keys",
                        siteURL: "http://www.theblackkeys.com",
                        homeTown: "Akron, Ohio, USA",
                        albums: [
                                [name: "El Camino", releaseYear: 2011, m: 40, s: 20],
                                [name: "Thickfreakness", releaseYear: 2003, m: 39, s: 01]
                        ]
                ]
        ]

        storeService.buildStore storeData


    }
    def destroy = {
    }
}
