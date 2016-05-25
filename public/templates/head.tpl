<!doctype html>
<html lang="fr">
<head>
    <meta charset="UTF-8">
    <title>{{title}}</title>
    <link rel="stylesheet" href="{root /}public/css/bootstrap.min.css">
    <link rel="stylesheet" href="{root /}public/css/app.css">
</head>
<body>
<header>
    <nav class="navbar navbar-default" role="navigation">
    	<!-- Brand and toggle get grouped for better mobile display -->
    	<div class="navbar-header">
    		<a class="navbar-brand" href="#">Home</a>
    	</div>
    
    	<!-- Collect the nav links, forms, and other content for toggling -->
    	<div class="collapse navbar-collapse navbar-ex1-collapse">
    		<ul class="nav navbar-nav">
    			<li {if ccond="equal({{active}},'blog')"}class="active"{/if}><a href="{url}Home#index{/url}">Blog</a></li>
    		</ul>
    		<ul class="nav navbar-nav navbar-right">
    			<li><a href="{url}Admin\Home#index{/url}">Administration</a></li>
    		</ul>
    	</div><!-- /.navbar-collapse -->
    </nav>
</header>