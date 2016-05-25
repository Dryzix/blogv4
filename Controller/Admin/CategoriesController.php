<?php


namespace BLOG\Controller\Admin;

use BLOG\Task\Admin\Categories\DeleteTask;
use BLOG\Task\Admin\Categories\AddTask;
use PHX\Core\Motor;

class CategoriesController extends AdminController{

    protected $tpl = 'public/templates/admin/global.tpl';

    public function index(){
        $this->checkAdmin();

        Motor::getTemplater()->injectVars(['title' => 'Administration - Catégories', 'active' => 'categories']);
        return $this->render('public/view/admin/categories.tpl');
    }

    public function delete($id){
        $this->checkAdmin();

        Motor::getTemplater()->injectVars(
            ['title' => 'Administration - Categories',
                'active' => 'categories',
                'delete' => $id
            ]);
        return $this->render('public/view/admin/categories.tpl');
    }

    public function add(){
        $this->checkAdmin();

        Motor::getTemplater()->injectVars(
            ['title' => 'Administration - Articles',
                'active' => 'categories'
            ]);
        return $this->render('public/view/admin/addCateg.tpl');
    }

    public function addPost(){
        return (new AddTask())->run();
    }


    public function deleteConf(){
        return (new DeleteTask())->run();
    }
}