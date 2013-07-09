package co.cantina.gr8conf

class Album {

    String name
    // should probably use a date or JodaTime, but feeling lazy
    int releaseYear
    // length of the album in seconds
    int runningTime = 0
    String review

    static belongsTo = [artist: Artist]

    static constraints = {
        name unique: true, maxSize: 256
        releaseYear min: 1900, max: 2015
        review maxSize: 4056, nullable:true, blank:true //arbitrary size
        runningTime min: 0
    }

    static mapping = {
        artist lazy: false
    }

    public String displayRunningTime() {
        "${Math.round(runningTime / 60)}:${runningTime % 60}"
    }

    public String toString() {
        "$name ($releaseYear)"
    }

}
