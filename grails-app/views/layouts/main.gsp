<!DOCTYPE html>
<!--[if lt IE 7 ]> <html lang="en" class="no-js ie6"> <![endif]-->
<!--[if IE 7 ]>    <html lang="en" class="no-js ie7"> <![endif]-->
<!--[if IE 8 ]>    <html lang="en" class="no-js ie8"> <![endif]-->
<!--[if IE 9 ]>    <html lang="en" class="no-js ie9"> <![endif]-->
<!--[if (gt IE 9)|!(IE)]><!--> <html lang="en" class="no-js"><!--<![endif]-->
	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
		<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
		<title>RecordStore | <g:layoutTitle default="Home"/></title>
		<meta name="viewport" content="width=device-width, initial-scale=1.0">
        <r:require modules="foundation"/>
		<g:layoutHead/>
		<r:layoutResources />
	</head>
	<body ng-app="recordStore">
        <div class="row header">
            <div class="large-12 columns">
                <h2>gr8conf US RecordStore</h2>
            </div>
        </div>
    <div class="row">
        <div class="large-8 columns error-spinner spinner">
            
        </div>
        <div class="large-8 columns view-container" ng-view>
            <g:layoutBody/>
        </div>

        <div class="large-4 columns">
            <img src="${resource( dir: 'images', file: 'record.jpg')}"/>
            <p>This site is a sample application to demonstrate a Single Page Web App</p>
        </div>
    </div>

		<r:layoutResources />
	</body>
</html>
