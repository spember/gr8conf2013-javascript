<html>
<head>
    <title>Artists</title>
    <meta name="layout" content="main"/>
</head>
<body>

<g:if test="${album}">
    <div class="row">
        <div class="large-12 columns panel">
            <div class="row">
                <div class="large-12 columns"><h3>${album.name}</h3></div>
            </div>

            <div class="row">
                <div class="large-6 columns">
                <p>Running time: ${album.displayRunningTime()}</p>
                </div>

                <div class="large-6 columns">

                </div>
            </div>


        </div>
    </div>



</g:if>
<g:else>
    <div class="row">
        <div class="large-12 columns panel">
            <h3>Unfortunately, we do not have that album</h3>
        </div>
    </div>
</g:else>

</body>
</html>