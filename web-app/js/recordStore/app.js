/*global angular, rs */
angular.module("recordStore", [])
    .service("httpSpinner", rs.services.httpSpinner)
    .config(['$routeProvider', function($routeProvider) {
        "use strict";

        var templateCacheBase = "/web-app/js/recordStore/templates/ngs/";
        // routes use Templates cached in templateCache using the ngtemplates grunt task
        // this allows one to use a url for the templates, and angular will use the cache rather than actually querying
        $routeProvider.
            when('/album/list', {templateUrl: templateCacheBase + "album/list.ng", controller: rs.controllers.album.list}).
            when('/album/detail/:id', {templateUrl: templateCacheBase + "album/detail.ng", controller: rs.controllers.album.detail}).
            when('/artist/detail/:id', {templateUrl: templateCacheBase + "artist/detail.ng", controller: rs.controllers.artist.detail}).
            when('/artist/list', {templateUrl: templateCacheBase + "artist/list.ng", controller: rs.controllers.artist.list}).
            when('/home', {templateUrl: templateCacheBase + "index.ng"}).

            otherwise({redirectTo: '/home'});

    }]);