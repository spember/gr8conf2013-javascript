<!doctype html>
<html lang="en">
<head>
    <meta charset="utf-8">

    <title><g:layoutTitle default="gr8conf US 2013"/></title>

    <meta name="description" content="gr8conf US 2013 Presentation on fundamentals of building Single Page Web Apps">
    <meta name="author" content="Steve Pember">

    <meta name="apple-mobile-web-app-capable" content="yes" />
    <meta name="apple-mobile-web-app-status-bar-style" content="black-translucent" />

    <meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=no">


    <!--[if lt IE 9]>
		<script src="lib/js/html5shiv.js"></script>
		<![endif]-->

    <link rel="stylesheet" href="css/reveal.min.css"/>
    <link rel="stylesheet" href="css/theme/default.css" id="theme"/>
    <link rel="stylesheet" href="css/presentation-custom.css"/>

    <!-- For syntax highlighting -->
    <link rel="stylesheet" href="lib/css/zenburn.css"/>

    <!-- If the query includes 'print-pdf', use the PDF print sheet -->
    <script>
        document.write( '<link rel="stylesheet" href="css/print/' + ( window.location.search.match( /print-pdf/gi ) ? 'pdf' : 'paper' ) + '.css" type="text/css" media="print">' );
    </script>

    <g:layoutHead/>
    <r:layoutResources />

</head>
<body>

<div class="reveal">

    <div class="slides">
        <g:layoutBody/>
    </div>


    <script src="lib/js/head.min.js"></script>
    <script src="js/reveal.min.js"></script>

    <script>

        // Full list of configuration options available here:
        // https://github.com/hakimel/reveal.js#configuration
        Reveal.initialize({
            controls: true,
            progress: true,
            history: true,
            center: true,

            theme: Reveal.getQueryHash().theme, // available themes are in /css/theme
            transition: Reveal.getQueryHash().transition || 'default', // default/cube/page/concave/zoom/linear/fade/none

            // Optional libraries used to extend on reveal.js
            dependencies: [
                { src: 'lib/js/classList.js', condition: function() { return !document.body.classList; } },
                { src: 'plugin/markdown/marked.js', condition: function() { return !!document.querySelector( '[data-markdown]' ); } },
                { src: 'plugin/markdown/markdown.js', condition: function() { return !!document.querySelector( '[data-markdown]' ); } },
                { src: 'plugin/highlight/highlight.js', async: true, callback: function() { hljs.initHighlightingOnLoad(); } },
                { src: 'plugin/zoom-js/zoom.js', async: true, condition: function() { return !!document.body.classList; } },
                { src: 'plugin/notes/notes.js', async: true, condition: function() { return !!document.body.classList; } }
                // { src: 'plugin/search/search.js', async: true, condition: function() { return !!document.body.classList; } }
                // { src: 'plugin/remotes/remotes.js', async: true, condition: function() { return !!document.body.classList; } }
            ]
        });

    </script>
</div>
</body>
</html>