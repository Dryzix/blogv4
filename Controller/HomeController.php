<?php


namespace BLOG\Controller;

use PHX\Core\Controller\Controller;
use PHX\Core\Motor;

class HomeController extends Controller{

    protected $tpl = 'public/templates/global.tpl';

    public function index($page = 1){
        Motor::getTemplater()->injectVars(['title' => 'Home','active' => 'blog', 'page' => $page]);
        return $this->render('public/view/home.tpl');
    }

}