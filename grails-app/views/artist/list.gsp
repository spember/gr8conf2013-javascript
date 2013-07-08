<html>
<head>
    <title>Artists</title>
    <meta name="layout" content="main"/>
</head>
<body>

<div class="row">
    <div class="large-12 columns">
        <p class="panel">
            <g:if test="${artists.size() == 0}">
                Unfortunately, We do not have any Artists.
            </g:if>
            <g:else>
                We have the following Artists:
            </g:else>
        </p>
    </div>
</div>
<g:each in="${artists}" var="artist">
    <div class="row">
        <div class="large-6 columns">
            <g:link controller="artist" action="detail" id="${artist.name}"> ${artist}</g:link>
        </div>

        <div class="large-6 columns">
            ${artist.albums.size()}
        </div>
    </div>
</g:each>

</body>
</html>