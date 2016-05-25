{dbSelect in="req" t=['articles'] w='id={{id}}'/}
{dbLoop for="req"}
	<div class="jumbotron">
		<div class="container">
			<h1>Modification article</h1>
			<div class="col-xs-12">
				<div data-box="ajax" class="dispn"></div>
				{{url='{url method="POST"}Admin\Articles#modifyPost{/url}'}}
				{form action="{{url}}" method="post" role="form" token="modifArt"}
					<input type="hidden" name="id" value="{{id}}" />

					<legend data-ajax="title">{txt}{req->title}{/txt}</legend>

					<div class="form-group">
						<label>Titre</label>
						<input type="text" class="form-control" name="title" value="{req->title}" />
					</div>
					<div class="form-group">
						<label>Url Image</label>
						<input type="text" class="form-control" name="img_url" value="{txt}{req->url}{/txt}" />
					</div>
					<div class="form-group">
						<label>Date</label>
						<input type="date" class="form-control" name="date" value="{date f="Y-m-d"}{req->date}{/date}" />
					</div>
					<div class="form-group">
						<label>Accroche</label>
						<input type="text" class="form-control" name="hook" value="{txt}{req->hook}{/txt}" />
					</div>
					<div class="form-group">
					<label>Catégorie</label>
					<select class="form-control" name="categ">
						{{categs}}
					</select>
					</div>
					<div class="form-group">
						<label>Contenu</label>
						<textarea name="content" class="form-control" rows="7">{txt}{req->content}{/txt}</textarea>
					</div>
				
					
				
					<button type="submit" class="btn btn-primary">Confirmer</button>
				{/form}
			</div>
		</div>
	</div>
{/dbLoop}