<?php


namespace BLOG\Controller\Admin;

use PHX\Core\Controller\Controller;
use PHX\Core\Motor;
use PHX\Core\Router\Router;

class AdminController extends Controller{

    protected $tpl = 'public/templates/admin/global.tpl';

    protected function checkAdmin(){
        $auth = Motor::getAuth();

        if(!$auth->isAdmin())
        {
            header('location: '.Router::getUrl('Admin\Home#connexion'));
        }
    }

}