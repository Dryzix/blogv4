{if ccond="isset({{id}})"}
{{t= [
		'a' -> 'articles',
		'j1' -> ['inner' -> 'a', 'c' -> 'categories', 'c.id = a.idCateg']
	]}}


{dbSelect in="art" t={{t}} o='date DESC' w="a.id=:id" v=[id->{{id}}]/}
<div class="jumbotron">
	<div class="container">
		<h1>Bienvenu sur mon blog</h1>
		<p>Voici mon blog personnel contenant toutes mes informations</p>
	</div>
</div>
<div class="container">
{dbLoop for='art' mode="txt"}
        <div class="col-xs-12">
            <div class="thumbnail text-center">
                <img src="{art->url}" alt="image" class="img-rounded"/>
                <article class="caption">
                    <h3>{art->title}</h3>
                    <h4>Catégorie : {art->name}</h4>
                    <p>{art->content}
                    </p>
                    <p>
                        <a href="{url}Home#index{/url}" class="btn btn-default">Retour aux articles</a>
                    </p>
                </article>
            </div>
        </div>
    {dbStep s='bot'}<!--FINDIV--></div>{/dbStep}
{/dbLoop}
{/if}