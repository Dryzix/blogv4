<?php
/**
 * Created by PhpStorm.
 * User: Tom
 * Date: 26/01/2016
 * Time: 10:10
 */

namespace BLOG\Task\Admin\Articles;


use PHX\Core\Motor;
use PHX\Core\Router\Router;
use PHX\Core\Task\Task;

class AddTask extends Task
{
    public function __construct()
    {

        $this->defaultMessageBox = '[data-box="ajax"]';
        parent::__construct();
    }

    public function run()
    {
        $auth = Motor::getAuth();
        $db = Motor::getDb();

        if(isset($_POST['token_addArt']) && $auth->isTokenValid('addArt', $_POST['token_addArt'], false))
        {
            if(isset($_POST['title'], $_POST['img_url'], $_POST['date'], $_POST['hook'], $_POST['content'])
            && !empty($_POST['title']) && !empty($_POST['img_url']) && !empty($_POST['date']) && !empty($_POST['hook'])
            && !empty($_POST['content']))
            {
                $date = new \DateTime($_POST['date']);

                $db->insert('articles')->setValues([
                                                    'id' => '',
                                                    'idUser' => $auth->get('id'),
                                                    'title' => $_POST['title'],
                                                    'hook' => $_POST['hook'],
                                                    'content' => $_POST['content'],
                                                    'url' => $_POST['img_url'],
                                                    'date' => $date->format('Y-m-d H:i:s'),
                                                    'idCateg' => $_POST['categ']
                ]);

                $db->execute();
                $root = Motor::getConf('site')->get('rootPath');
                $page = Motor::getTemplater()->loadTemplate($root.'public/view/admin/articles.tpl');

                $url = Router::getUrl('Admin\Articles#index');

                $this
                     ->changeUrl($url)
                     ->fadeOut('.fullcontent', 150)
                     ->setHtml($page, '.fullcontent')
                     ->fadeInIn('.fullcontent', 150, 150)
                     ->setText('Ajout effectué !')
                     ->setClass('alert alert-success')
                     ->fadeIn($this->defaultMessageBox)
                     ->fadeOutIn($this->defaultMessageBox, 2500);
            }
            else
            {
                $this
                    ->addClass('alert alert-danger')
                    ->setText('Vous devez remplir tout les champs !')
                    ->fadeIn();
            }
            return $this->build();
        }
    }
}