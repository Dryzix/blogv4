{{tables= [
			'c' -> 'categories'
		  ]
}}


{dbSelect in="categ" tables={{tables}} /}

<div class="jumbotron">
	<div class="container">
		<div data-box="ajax" class="dispn"></div>
		{if cond="isset" param='{{delete}}'}
			{dbSelect in='conf' t='[c->categories]' w='id=?' v=[{{delete}}]/}
			{dbLoop for='conf'}
			{{url="{url m='POST'}Admin\Categories#deleteConf{/url}"}}
				{form action='{{url}}' token="delCateg"}
					<input type="hidden" name="id" value="{{delete}}"/>
					<div class="alert alert-danger" data-box="ajaxHide">Êtes vous sûr de vouloir supprimer la catégorie "{conf->name}" ?
						<div class="pull-right">
							<button type="submit" class="btn btn-xs btn-danger">Oui</button>
							<a class="btn btn-xs btn-warning" href="{url}Admin\Categories#index{/url}">Non</a>
						</div>
					</div>
				{/form}
			{/dbLoop}
		{/if}
		<h1>Administration - Catégories</h1>
		<a class="btn btn-default" href="{url}Admin\Categories#add{/url}">Ajouter une catégorie</a>
		<br />
		<br />
		<table class="table table-striped table-hover">
			<thead>
				<tr>
					<th>ID</th>
					<th>Nom</th>
				</tr>
			</thead>
			<tbody>
			{dbLoop for="categ" mode="txt"}
				<tr data-categid="{categ->id}">
					<td>{categ->id}</td>
					<td>{categ->name}</td>
					<td>
						<a href="{url with=['id'->'{categ->id}']}Admin\Categories#delete{/url}" title="Supprimer"><img src="{root /}public/img/icons/delete.png" alt="supprimer" /></a>
					</td>
				</tr>
			{/dbLoop}
			</tbody>
		</table>
	</div>
</div>

