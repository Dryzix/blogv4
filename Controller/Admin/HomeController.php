<?php


namespace BLOG\Controller\Admin;

use BLOG\Task\Admin\LoginTask;
use PHX\Core\Motor;
use PHX\Core\Router\Router;

class HomeController extends AdminController{

    protected $tpl = 'public/templates/admin/global.tpl';

    public function index(){
        $this->checkAdmin();

        Motor::getTemplater()->injectVars(['title' => 'Administration - Home', 'active' => 'home']);
        return $this->render('public/view/admin/home.tpl');
    }

    public function connexion(){
        $auth = Motor::getAuth();

        if($auth->isAdmin())
        {
            header('location: '.Router::getUrl('Admin\Admin#index'));
        }
        Motor::getTemplater()->injectVars(['title' => 'Administration - Connexion', 'active' => 'home']);
        $this->tpl = 'public/templates/void.tpl';
        return $this->render('public/view/admin/connexion.tpl');
    }

    public function deconnexion(){
        Motor::getAuth()->destroy();
        header('location: ' . Motor::getConf('site')->get('siteUrl'));
    }

    public function loginTest(){
        return (new LoginTask())->run();
    }
}