<html>
<head>
    <title>Artists</title>
    <meta name="layout" content="main"/>
</head>
<body>

<g:if test="${artist}">
    <div class="row">
        <div class="large-12 columns panel">
            <div class="row">
                <div class="large-12"><h3>${artist.name}</h3></div>
            </div>

            <div class="row">
                <div class="large-6 columns">
                    <p>website: <a href="${artist.siteURL}" target="_blank">${artist.siteURL}</a></p>
                </div>
            </div>
            <div class="row">
                <div class="large-6 columns">
                    <p>HomeTown: ${artist.homeTown}</p>
                </div>
            </div>
        </div>
    </div>

    <div class="row">
        <div class="large-12 columns"><h3>Albums (${albums.size()})</h3></div>
    </div>
    <g:each in="${albums}" var="album">
        <div class="row">
            <div class="large-12 columns">
                <p><g:link controller="album" action="detail" id="${album.id}">${album}</g:link></p>
            </div>
        </div>

    </g:each>
</g:if>
<g:else>
    <div class="row">
        <div class="large-12 columns panel">
            <h3>Unfortunately, we do not have that artist</h3>
        </div>
    </div>
</g:else>

</body>
</html>