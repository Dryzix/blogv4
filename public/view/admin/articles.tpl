{{tables= [
			'a' -> 'articles',
			'join' -> ['inner' -> 'a', 'u' -> 'users', 'u.id = a.idUser']
		  ]
}}

{{columns="a.*,u.login"}}

{dbSelect in="article" tables={{tables}} c={{columns}} /}

<div class="jumbotron">
	<div class="container">
		<div data-box="ajax" class="dispn"></div>
		{if cond="isset" param='{{delete}}'}
			{dbSelect in='conf' t='[a->articles]' w='id=?' v=[{{delete}}]/}
			{dbLoop for='conf'}
			{{url="{url m='POST'}Admin\Articles#deleteConf{/url}"}}
				{form action='{{url}}' token="delArt"}
					<input type="hidden" name="id" value="{{delete}}"/>
					<div class="alert alert-danger" data-box="ajaxHide">Êtes vous sûr de vouloir supprimer l'article "{conf->title}" ?
						<div class="pull-right">
							<button type="submit" class="btn btn-xs btn-danger">Oui</button>
							<a class="btn btn-xs btn-warning" href="{url}Admin\Articles#index{/url}">Non</a>
						</div>
					</div>
				{/form}
			{/dbLoop}
		{/if}
		<h1>Administration - Articles</h1>
		<a class="btn btn-default" href="{url}Admin\Articles#add{/url}">Ajouter un article</a>
		<br />
		<br />
		<table class="table table-striped table-hover">
			<thead>
				<tr>
					<th>ID</th>
					<th>Titre</th>
					<th>Utilisateur</th>
					<th>Date</th>
					<th>Action</th>
				</tr>
			</thead>
			<tbody>
			{dbLoop for="article" mode="txt"}
				<tr data-articleid="{article[a]->id}">
					<td>{article[a]->id}</td>
					<td>{article->title}</td>
					<td>{article->login}</td>
					<td>{date f="d/m/Y"}{article->date}{/date}</td>
					<td>
						<a href="{url with=['id'->'{article[a]->id}']}Admin\Articles#delete{/url}" title="Supprimer"><img src="{root /}public/img/icons/delete.png" alt="supprimer" /></a>
						<a href="{url with=['id'->'{article[a]->id}']}Admin\Articles#modify{/url}" title="Modifier"><img src="{root /}public/img/icons/edit.png" alt="modifier" /></a>
					</td>
				</tr>
			{/dbLoop}
			</tbody>
		</table>
	</div>
</div>

