<!DOCTYPE html>
<html>
<head>
    <title>Grails REST API POC</title>
    <link href='${assetPath(src: 'typography.css')}' media='screen' rel='stylesheet' type='text/css'/>
    <link href='${assetPath(src: 'reset.css')}' media='screen' rel='stylesheet' type='text/css'/>
    <link href='${assetPath(src: 'screen.css')}' media='screen' rel='stylesheet' type='text/css'/>
    <link href='${assetPath(src: 'reset.css')}' media='print' rel='stylesheet' type='text/css'/>
    <link href='${assetPath(src: 'print.css')}' media='print' rel='stylesheet' type='text/css'/>
    <script src='${assetPath(src: 'jquery-1.8.0.min.js')}' type='text/javascript'></script>
    <script src='${assetPath(src: 'jquery.slideto.min.js')}' type='text/javascript'></script>
    <script src='${assetPath(src: 'jquery.wiggle.min.js')}' type='text/javascript'></script>
    <script src='${assetPath(src: 'jquery.ba-bbq.min.js')}' type='text/javascript'></script>
    <script src='${assetPath(src: 'handlebars-2.0.0.js')}' type='text/javascript'></script>
    <script src='${assetPath(src: 'underscore-min.js')}' type='text/javascript'></script>
    <script src='${assetPath(src: 'backbone-min.js')}' type='text/javascript'></script>
    <script src='${assetPath(src: 'swagger-ui.js')}' type='text/javascript'></script>
    <script src='${assetPath(src: 'highlight.7.3.pack.js')}' type='text/javascript'></script>
    <script src='${assetPath(src: 'marked.js')}' type='text/javascript'></script>
    <script src='${assetPath(src: 'swagger-oauth.js')}' type='text/javascript'></script>

    <script type="text/javascript">
        $(function () {
            var url = window.location.search.match(/url=([^&]+)/);
            if (url && url.length > 1) {
                url = decodeURIComponent(url[1]);
            } else {
                url = "${assetPath(src: 'swagger.json')}";
            }
            window.swaggerUi = new SwaggerUi({
                url: url,
                dom_id: "swagger-ui-container",
                supportedSubmitMethods: ['get', 'post', 'put', 'delete', 'patch'],
                onComplete: function(swaggerApi, swaggerUi){
                    $('pre code').each(function(i, e) {
                        hljs.highlightBlock(e)
                    });
                },
                onFailure: function(data) {
                    log("Unable to Load SwaggerUI");
                },
                docExpansion: "list",
                apisSorter: "alpha",
                showRequestHeaders: true
            });

            window.swaggerUi.load();

            function log() {
                if ('console' in window) {
                    console.log.apply(console, arguments);
                }
            }
        });
    </script>
</head>

<body class="swagger-section">

<div id="message-bar" class="swagger-ui-wrap">&nbsp;</div>
<div id="swagger-ui-container" class="swagger-ui-wrap"></div>

</body>
</html>
