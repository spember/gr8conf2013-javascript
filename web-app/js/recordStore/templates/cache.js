angular.module("recordStore").run(["$templateCache", function($templateCache) {

  $templateCache.put("/web-app/js/recordStore/templates/ngs/album/detail.ng",
    "\n" +
    "<div class=\"row\" ng-show=\"album.name\">\n" +
    "    <div class=\"large-12 columns panel\">\n" +
    "        <div class=\"row\">\n" +
    "            <div class=\"large-12 columns\"><h3>{{album.name}}</h3></div>\n" +
    "        </div>\n" +
    "\n" +
    "        <div class=\"row\">\n" +
    "            <div class=\"large-6 columns\">\n" +
    "                <p>Running time: {{album.runningTime}}</p>\n" +
    "            </div>\n" +
    "\n" +
    "            <div class=\"large-6 columns\">\n" +
    "\n" +
    "            </div>\n" +
    "        </div>\n" +
    "\n" +
    "\n" +
    "    </div>\n" +
    "</div>\n" +
    "\n" +
    "<!--\n" +
    "<div class=\"row\" ng-hide=\"album\">\n" +
    "    <div class=\"large-12 columns panel\">\n" +
    "        <h3>Unfortunately, we do not have that album</h3>\n" +
    "    </div>\n" +
    "</div>\n" +
    "-->\n"
  );

  $templateCache.put("/web-app/js/recordStore/templates/ngs/album/list.ng",
    "<div class=\"large-12 columns\" ng-show=\"albums.length\">\n" +
    "   <p class=\"panel\">We have the following albums: </p>\n" +
    "</div>\n" +
    "<div class=\"row\" ng-repeat='album in albums'>\n" +
    "   <div class='large-6 columns'>\n" +
    "        <a href='#/album/detail/{{album.id}}'>{{album.name}}</a>\n" +
    "   </div>\n" +
    "</div>\n" +
    "\n" +
    "<!--\n" +
    "<div class=\"large-12 columns\"  ng-hide=\"albums.length\">\n" +
    "    <p class=\"panel\">No albums found</p>\n" +
    "</div>\n" +
    "-->\n" +
    "\n"
  );

  $templateCache.put("/web-app/js/recordStore/templates/ngs/artist/detail.ng",
    "<div class=\"row\" ng-show=\"artist.name\">\n" +
    "    <div class=\"large-12 columns panel\">\n" +
    "        <div class=\"row\">\n" +
    "            <div class=\"large-12\"><h3>{{artist.name}}</h3></div>\n" +
    "        </div>\n" +
    "\n" +
    "        <div class=\"row\">\n" +
    "            <div class=\"large-6 columns\">\n" +
    "                <p>website: <a href=\"{{artist.siteURL}}\" target=\"_blank\">{{artist.siteURL}}</a></p>\n" +
    "            </div>\n" +
    "        </div>\n" +
    "        <div class=\"row\">\n" +
    "            <div class=\"large-6 columns\">\n" +
    "                <p>HomeTown: {{artist.homeTown}}</p>\n" +
    "            </div>\n" +
    "        </div>\n" +
    "    </div>\n" +
    "</div>\n" +
    "\n" +
    "<div class=\"row\" ng-show=\"albums.length\">\n" +
    "    <div class=\"large-12 columns\"><h3>Albums ({{albums.length}})</h3></div>\n" +
    "</div>\n" +
    "\n" +
    "<div class=\"row\" ng-repeat=\"album in albums\">\n" +
    "    <div class=\"large-12 columns\">\n" +
    "        <p><a href=\"#/album/detail/{{album.id}}\">{{album.name}}</a></p>\n" +
    "    </div>\n" +
    "</div>\n"
  );

  $templateCache.put("/web-app/js/recordStore/templates/ngs/artist/list.ng",
    "<div class=\"large-12 columns\" ng-show=\"artists.length\">\n" +
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
