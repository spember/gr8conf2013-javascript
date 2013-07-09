<html>
<head>
    <title>Home - SinglePage-ified!</title>
    <meta name="layout" content="main"/>
    <r:require modules="demo"/>
</head>
<body>
<g:render template="welcome"/>

<div class="row">
    <div class="large-6 columns">
        <g:link controller="artist" action="list" class="button">Artists</g:link>
    </div>

    <div class="large-6 columns">
        <a class="button" href="#">Albums</a>
    </div>
</div>

</body>
</html>