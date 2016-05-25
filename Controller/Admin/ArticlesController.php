<?php


namespace BLOG\Controller\Admin;

use BLOG\Task\Admin\Articles\AddTask;
use BLOG\Task\Admin\Articles\DeleteTask;
use BLOG\Task\Admin\Articles\ModifyTask;
use PHX\Core\Motor;

class ArticlesController extends AdminController{

    protected $tpl = 'public/templates/admin/global.tpl';

    public function index(){
        $this->checkAdmin();

        Motor::getTemplater()->injectVars(['title' => 'Administration - Articles', 'active' => 'articles']);
        return $this->render('public/view/admin/articles.tpl');
    }

    public function delete($id){
        $this->checkAdmin();

        Motor::getTemplater()->injectVars(
            ['title' => 'Administration - Articles',
                'active' => 'articles',
                'delete' => $id
            ]);
        return $this->render('public/view/admin/articles.tpl');
    }

    public function modify($id){
        $this->checkAdmin();

        Motor::getDb()->select('idCateg')->from(['articles'])->where('id=?')->setValues([$id])->execute('article');
        $article = Motor::getDb()->next('article', true);
        Motor::getDb()->destroy();

        Motor::getDb()->select('*')->from(['categories'])->execute();
        $categs =  '';

        while($rep = Motor::getDb()->next())
        {
            if($article->idCateg == $rep->id)
            {
                $categs .= '<option value="' . $rep->id . '" selected="selected">' . $rep->name . '</option>';
            }
            else{
                $categs .= '<option value="' . $rep->id . '">' . $rep->name . '</option>';
            }
        }

        Motor::getTemplater()->injectVars(
                ['title' => 'Administration - Articles',
                'active' => 'articles',
                'categs' => $categs,
                'id' => $id
            ]);
        return $this->render('public/view/admin/modify.tpl');
    }

    public function add(){
        $this->checkAdmin();

        Motor::getTemplater()->injectVars(
            ['title' => 'Administration - Articles',
                'active' => 'articles'
            ]);
        return $this->render('public/view/admin/add.tpl');
    }

    public function addPost(){
        return (new AddTask())->run();
    }

    public function modifyPost(){
        return (new ModifyTask())->run();
    }

    public function deleteConf(){
        return (new DeleteTask())->run();
    }
}