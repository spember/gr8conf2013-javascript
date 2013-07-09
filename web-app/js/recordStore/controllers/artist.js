/*global namespace, rs, console */
namespace("rs.controllers.artist");
(function(rs) {
    'use strict';

    /**
     * Responsible for querying the basic listing of the artists
     * @param $scope
     * @param $http
     */
    rs.controllers.artist.list = function($scope, $http) {
        $http({
            url: "/artist/list",
            method: "GET",
            headers : { 'Content-Type':'application/json; charset=UTF-8', 'X-Requested-With': 'XMLHttpRequest' }
        }).success(function(data) {
                $scope.artists = data;
            });
    };

    rs.controllers.artist.detail = function($scope, $routeParams, $http) {
        console.log("id = " + $routeParams.id);
        $http({
            url: "/artist/detail/" + $routeParams.id,
            method: "GET",
            headers : { 'Content-Type':'application/json; charset=UTF-8', 'X-Requested-With': 'XMLHttpRequest' }
        })
            .success(function(data) {
                $scope.artist = data.artist;
                $scope.albums = data.albums;
            });

    };

})(window.rs);

