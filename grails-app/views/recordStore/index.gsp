<html>
	<head>
		<title>Home</title>
		<meta name="layout" content="main"/>
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