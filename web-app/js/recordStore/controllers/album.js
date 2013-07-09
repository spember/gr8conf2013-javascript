/*global namespace, rs, console */
namespace("rs.controllers.album");
(function(rs) {
    'use strict';

    /**
     * Responsible for querying the basic listing of the albums
     * @param $scope
     * @param $http
     */
    rs.controllers.album.list = function($scope, httpSpinner) {
        httpSpinner.async("/album/list").then(function (data) {
           $scope.albums = data;
        });
    };

    rs.controllers.album.detail = function($scope, $routeParams, httpSpinner) {
        httpSpinner.async("/album/detail/" + $routeParams.id).then(function (data){
            $scope.artist = data.artist;
            $scope.album = data.album;
        });
    };

})(window.rs);

