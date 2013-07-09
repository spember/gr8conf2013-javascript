/*global namespace, rs, console */
namespace("rs.controllers.artist");
(function(rs) {
    'use strict';

    /**
     * Responsible for querying the basic listing of the artists
     * @param $scope
     * @param $http
     */
    rs.controllers.artist.list = function($scope, httpSpinner) {
        httpSpinner.async("/artist/list").then(function (data) {
            $scope.artists = data;
        });
    };

    rs.controllers.artist.detail = function($scope, $routeParams, httpSpinner) {
        httpSpinner.async("/artist/detail/" +$routeParams.id).then(function (data) {
            $scope.artist = data.artist;
            $scope.albums = data.albums;
        });
    };

})(window.rs);

