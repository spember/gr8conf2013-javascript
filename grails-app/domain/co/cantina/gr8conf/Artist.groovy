package co.cantina.gr8conf

class Artist {

    String name
    String siteURL
    String homeTown
    String description

    static hasMany = [albums: Album]

    static constraints = {
        name unique: true, maxSize: 256
        siteURL url: true, nullable: true, blank: true
        homeTown nullable: true, blank: true, maxSize: 256
        description nullable: true, blank:true, maxSize: 4096
    }

    static mapping = {
        albums lazy: false
    }

    public String toString() {
        "$name"
    }
}
