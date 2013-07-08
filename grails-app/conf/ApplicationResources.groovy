modules = {

    foundation {
        ["normalize", "foundation/foundation.min", "recordStore"].each { name ->
            resource url: [dir: 'css', file: name + '.css']
        }
    }

    libraries {

        //["namespace", "zepto.min", "underscore-min", "backbone-min", "handlebars"].each { name ->
        ["namespace", "angular.min"].each { name ->
            resource url: [dir: 'js/lib', file: name +".js"]
        }

    }

    recordStore {
        dependsOn "libraries"



    }

    reveal {

    }
}