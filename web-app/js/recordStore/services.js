/*global namespace, rs, $, console */
namespace("rs.services");
(function(rs) {
    'use strict';


    /**
     * Acts as a wrapper around the standard $http service. Forces the request to be a json GET. Hides and shows a spinner
     * in the page
     *
     * @param $http
     * @returns {{async: Function}}
     */
    rs.services.httpSpinner = function ($http) {

        var hs = {
            async: function(url) {
                var spinner = $(".error-spinner");
                spinner.show();

                // $http returns a promise, which has a then function, which also returns a promise
                var promise = $http({
                    url: url,
                    method: "GET",
                    // force the use of the xmlhttprequest so that Grails respects the request.xhr condition
                    headers : { 'Content-Type':'application/json; charset=UTF-8', 'X-Requested-With': 'XMLHttpRequest' }
                }).then(function (response) {
                    //hide the spinner
                    spinner.hide();
                    // The return value gets picked up by the then in the controller.
                    return response.data;
                });
                // Return the promise to the controller
                return promise;
            }
        };

        return hs;
    };

})(window.rs);
