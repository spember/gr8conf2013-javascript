modules = {

    foundation {
        ["normalize", "foundation/foundation.min", "recordStore"].each { name ->
            resource url: [dir: 'css', file: name + '.css']
        }
    }

    libraries {

        //["namespace", "zepto.min", "underscore-min", "backbone-min", "handlebars"].each { name ->
        ["namespace", "angular.min"].each { name ->
            resource url: [dir: 'js/lib', file: name + ".js"], disposition: "head"
        }

    }

    demo {
        dependsOn "libraries"

        [
                "controllers/artist",
                "controllers/album",
                // main app should be close to last in the load order
                "app",
                // cache depends on app, though
                "templates/cache"
        ].each { file ->
            resource url: [dir: 'js/recordStore', file: file + ".js"]

        }



    }

    reveal {

    }
}