{{tables= ['c' -> 'categories']}}
{dbSelect in="categ" tables={{tables}} /}

<div class="jumbotron">
	<div class="container">
		<h1>Ajout article</h1>
		<div class="col-xs-12">
			<div data-box="ajax" class="dispn"></div>
			{{url='{url method="POST"}Admin\Articles#addPost{/url}'}}
			{form action="{{url}}" method="post" role="form" token="addArt"}
				<input type="hidden" name="id" value="{{id}}" />

				<legend data-ajax="title">Nouvel Article</legend>

				<div class="form-group">
					<label>Titre</label>
					<input type="text" class="form-control" name="title" placeholder="Un titre.."/>
				</div>
				<div class="form-group">
					<label>Url Image</label>
					<input type="text" class="form-control" name="img_url" placeholder="Lien vers l'image"/>
				</div>
				<div class="form-group">
					<label>Date</label>
					<input type="date" class="form-control" name="date" />
				</div>
				<div class="form-group">
					<label>Accroche</label>
					<input type="text" class="form-control" name="hook" placeholder="Donnez envie à vos lecteurs !" />
				</div>
				<div class="form-group">
					<label>Catégorie</label>
					<select class="form-control" name="categ">
					{dbLoop for="categ"}
						<option value="{categ->id}">{categ->name}</option>
					{/dbLoop}
					</select>
				</div>
				<div class="form-group">
					<label>Contenu</label>
					<textarea name="content" class="form-control" rows="7" placeholder="Blablabla .."></textarea>
				</div>



				<button type="submit" class="btn btn-primary">Confirmer</button>
			{/form}
		</div>
	</div>
</div>