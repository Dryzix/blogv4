<div class="jumbotron">
	<div class="container">
		<h1>Ajouter une catégorie</h1>
		<div class="col-xs-12">
			<div data-box="ajax" class="dispn"></div>
			{{url='{url method="POST"}Admin\Categories#addPost{/url}'}}
			{form action="{{url}}" method="post" class="form-inline" role="form" token="addCateg"}
			
				<div class="form-group">
					<label class="sr-only" for="name">Nom :</label>
					<input type="text" class="form-control" name="name" id="name" placeholder="Nom de la catégorie">
				</div>
			
				
			
				<button type="submit" class="btn btn-primary">Ajouter</button>
			{/form}
		</div>
	</div>
</div>