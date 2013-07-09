angular.module("recordStore").run(["$templateCache", function($templateCache) {

  $templateCache.put("/web-app/js/recordStore/templates/ngs/album/list.ng",
    "<div class=\"large-12 columns\">\n" +
    "   <p class=\"panel\">We have the following albums: </p>\n" +
    "</div>\n" +
    "<div class=\"row\" ng-repeat='album in albums'>\n" +
    "   <div class='large-6 columns'>\n" +
    "        <a href='#/album/{{album.name}}'>{{album.name}}</a>\n" +
    "   </div>\n" +
    "</div>"
  );

  $templateCache.put("/web-app/js/recordStore/templates/ngs/artist/detail.ng",
    "<row class=\"large-12 columns\">\n" +
    "    Blah\n" +
    "</row>"
  );

  $templateCache.put("/web-app/js/recordStore/templates/ngs/artist/list.ng",
    "<div class=\"large-12 columns\">\n" +
    "    <p class=\"panel\">We have the following artists: </p>\n" +
    "</div>\n" +
    "<div class=\"row\" ng-repeat='artist in artists'>\n" +
    "    <div class='large-6 columns'>\n" +
    "        <a href='#/artist/detail/{{artist.name}}'>{{artist.name}}</a>\n" +
    "    </div>\n" +
    "</div>"
  );

  $templateCache.put("/web-app/js/recordStore/templates/ngs/index.ng",
    "<div class=\"row\">\n" +
    "    <div class=\"large-6 columns\">\n" +
    "        <a href=\"#/artist/list\" class=\"button\">Artists</a>\n" +
    "    </div>\n" +
    "\n" +
    "    <div class=\"large-6 columns\">\n" +
    "        <a class=\"button\" href=\"#/album/list\">Albums</a>\n" +
    "    </div>\n" +
    "</div>"
  );

}]);
