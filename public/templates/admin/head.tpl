<!doctype html>
<html lang="fr">
<head>
    <meta charset="UTF-8">
    <title>{{title}}</title>
    <link rel="stylesheet" href="{root /}public/css/bootstrap.min.css">
    <link rel="stylesheet" href="{root /}public/css/admin.css">
</head>
<body>
<div class="container">
<header class="col-xs-12">
    <nav class="navbar navbar-inverse">
    	<a class="navbar-brand" href="{url}Admin\Home#index{/url}">Administration</a>
    	<ul class="nav navbar-nav">
    		<li {if ccond="equal({{active}},'home')"}class="active"{/if}>
    			<a href="{url}Admin\Home#index{/url}">Home</a>
    		</li>
			<li {if ccond="equal({{active}},'articles')"}class="active"{/if}>
				<a href="{url}Admin\Articles#index{/url}">Articles</a>
			</li>
			<li {if ccond="equal({{active}},'categories')"}class="active"{/if}>
				<a href="{url}Admin\Categories#index{/url}">Catégories</a>
			</li>
    	</ul>
		<ul class="nav navbar-nav navbar-right mgr0">
			<li><a href="{url}Home#index{/url}">Front</a></li>
			<li><a href="{url}Admin\Home#deconnexion{/url}">Déconnexion</a></li>
		</ul>
    </nav>
</header>
</div>
<div class="fullcontent">