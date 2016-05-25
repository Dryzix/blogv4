{{start={{page}}}}
{{start*=8}}
{{start-=8}}
{{limit={{start}}}}
{{limit.=',8'}}
{dbSelect in="art" t=['articles'] o='date DESC' l={{limit}}/}
<div class="jumbotron">
	<div class="container">
		<h1>Bienvenu sur mon blog</h1>
		<p>Voici mon blog personnel contenant toutes mes informations</p>
	</div>
</div>
<div class="container">
<div class="row">
    <div class="col-xs-12">
        <div class="text-center">
            <ul class="pagination">
                {dbPages for="art" model="default" current='{{page}}' limit='8' route='Home#index'}
                    {<li><a href="route_first">page_first</a></li>}
                    {<li><a href="route_prev">page_prev</a></li>}
                    {<li class="active"><a href="#">page_current</a></li>}
                    {<li><a href="route_next">page_next</a></li>}
                    {<li><a href="route_last">page_last</a></li>}
                {/dbPages}
            </ul>
        </div>
    </div>
</div>
{dbLoop for='art' mode="txt"}
    {dbOpt newline="4" /}
    {dbStep s='top'}<!--DEBUTDIV--><div class="row">{/dbStep}
    {*{dbStep s=4}<!--DEBUTDIV--><div class="row">{/dbStep}*}
        <div class="col-xs-3">
            <div class="thumbnail">
                <img src="{art->url}" alt="image" class="img-rounded"/>
                <article class="caption">
                    <h3>{art->title}</h3>
                    <p>{art->hook}
                    {*{dbStep s=3 ignorenewline=''}---dbStep---{/dbStep}*}
                    </p>
                    <p>
                        <a href="{url with='[id->{art->id}]'}Article#index{/url}" class="btn btn-primary">Lire la suite</a>
                    </p>
                </article>
            </div>
        </div>
    {dbStep s='bot'}<!--FINDIV--></div>{/dbStep}
{/dbLoop}
</div>
{*<div class="col-xs-3 col-sm-3 col-md-3 col-lg-3">*}
    {*<div class="thumbnail">*}
        {*<img src="http://static.lexpress.fr/medias_10109/w_1322,h_575,c_crop,x_0,y_778/w_1520,h_855,c_fill,g_north/v1419254757/les-simpson-7_5176161.jpg" alt="image" />*}
        {*<article class="caption">*}
            {*<h3>Mon titre</h3>*}
            {*<p>*}
                {*Le préambule de mon article*}
            {*</p>*}
            {*<p>*}
                {*<a href="#" class="btn btn-primary">Lire la suite</a>*}
            {*</p>*}
        {*</article>*}
    {*</div>*}
{*</div>*}
