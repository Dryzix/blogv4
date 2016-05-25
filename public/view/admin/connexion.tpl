<div class="admin-connexion col-xs-4 col-xs-push-4">
	<h1 class="admin-connexion-title">Connexion</h1>
	<div class="col-xs-12">
		<br />
		<div data-box="ajax"></div>
		{form action="connexion" role="form" class="col"}
			<div class="form-group">
				<input type="text" class="form-control" name="login" placeholder="Identifiant">
			</div>
			<div class="form-group">
				<input type="password" class="form-control" name="pwd" placeholder="Mot de passe">
			</div>
			<button type="submit" class="btn btn-primary col-xs-12">Connexion</button>
		{/form}
	</div>
</div>