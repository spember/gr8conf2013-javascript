/*global namespace, rs, console */
namespace("rs.controllers.album");
(function(rs) {
    'use strict';

    /**
     * Responsible for querying the basic listing of the artists
     * @param $scope
     * @param $http
     */
    rs.controllers.album.list = function($scope, $http) {
        $http({
            url: "/album/list",
            method: "GET",
            headers : { 'Content-Type':'application/json; charset=UTF-8', 'X-Requested-With': 'XMLHttpRequest' }
        }).success(function(data) {
                $scope.albums = data;
            });
    };

    rs.controllers.album.detail = function($scope, $routeParams, $http) {
        console.log("id = " + $routeParams.id);
        $http({
            url: "/album/detail/" + $routeParams.id,
            method: "GET",
            headers : { 'Content-Type':'application/json; charset=UTF-8', 'X-Requested-With': 'XMLHttpRequest' }
        })
            .success(function(data) {
                $scope.artist = data.artist;
                $scope.album = data.album;
            });

    };

})(window.rs);

