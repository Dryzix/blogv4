<?php


namespace BLOG\Controller;

use PHX\Core\Controller\Controller;
use PHX\Core\Motor;

class ErrorController extends Controller{

    protected $tpl = 'public/templates/global.tpl';

    public function e404(){
        Motor::getTemplater()->injectVars(['title' => 'Home']);
        return $this->render('public/view/errors/404.tpl');
    }

}