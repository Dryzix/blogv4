<?php
/**
 * Created by PhpStorm.
 * User: Tom
 * Date: 26/01/2016
 * Time: 10:10
 */

namespace BLOG\Task\Admin\Categories;


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

        if(isset($_POST['token_addCateg']) && $auth->isTokenValid('addCateg', $_POST['token_addCateg'], false))
        {
            if(isset($_POST['name']) && !empty($_POST['name']))
            {

                $db->insert('categories')->setValues([
                                                    'id' => '',
                                                    'name' => $_POST['name']
                                                 ]);

                $db->execute();

                $url = Router::getUrl('Admin\Categories#index');
                $this->redirect(rtrim(Motor::getConf('site')->get('siteUrl'), '/') . '/' . $url);
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