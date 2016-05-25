<?php


namespace BLOG\Controller;

use PHX\Core\Controller\Controller;
use PHX\Core\Motor;

class ArticleController extends Controller{

    protected $tpl = 'public/templates/global.tpl';

    public function index($id){
        Motor::getTemplater()->injectVars(['title' => 'Home','active' => 'blog', 'id' => $id]);
        return $this->render('public/view/article.tpl');
    }

}