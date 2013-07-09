<html>
<head>
    <title>Albums</title>
    <meta name="layout" content="main"/>
</head>
<body>

<div class="row">
    <div class="large-12 columns">
        <p class="panel">
            <g:if test="${albums.size() == 0}">
                Unfortunately, We do not have any Albums.
            </g:if>
            <g:else>
                We have the following Albums:
            </g:else>
        </p>
    </div>
</div>
<g:each in="${albums}" var="album">
    <div class="row">
        <div class="large-6 columns">
            <g:link controller="album" action="detail" id="${album.id}">${album.artist} - ${album}</g:link>
        </div>
    </div>
</g:each>

</body>
</html>