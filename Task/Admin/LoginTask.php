<?php
/**
 * Created by PhpStorm.
 * User: Tom
 * Date: 26/01/2016
 * Time: 10:10
 */

namespace BLOG\Task\Admin;


use PHX\Core\Motor;
use PHX\Core\Router\Router;
use PHX\Core\Task\Task;

class LoginTask extends Task
{
    public function __construct()
    {
        $this->defaultMessageBox = '[data-box="ajax"]';
        parent::__construct();
    }

    public function run()
    {
        if(isset($_POST['login'], $_POST['pwd']) && !empty($_POST['login']) && !empty($_POST['pwd']))
        {
            $db = Motor::getDb();
            $db->select('COUNT(*) AS verif')->from('users')->where("login=?")->setValues([$_POST['login']])->execute();

            if($db->next()->verif != 0)
            {
                $db = Motor::getDb();
                $db->select('*')
                    ->from('users')
                    ->where("login=? and pwd=?")
                    ->setValues([$_POST['login'], $_POST['pwd']])
                    ->execute();

                if($db->count() != 0)
                {
                    $res = $db->next();
                    $auth = Motor::getAuth();
                    $auth->set('id', $res->id)->set('login', $res->login)->setAdmin();
                    $this->setClass('alert alert-success')
                         ->setText('Connexion réussi, vous allez être redirigé')
                         ->redirect(Router::getUrl('Admin\Home#index'), 1500);
                    return $this->build();
                }
                else
                {
                    $this->error();
                    $this->setClass('alert alert-danger');
                    $this->setHtml('<b>Erreur : </b> Mot de passe incorrect');
                    return $this->build();
                }
            }
            else
            {
                $this->error();
                $this->setClass('alert alert-danger');
                $this->setHtml('<b>Erreur : </b> Identifiant inexistant');
                return $this->build();
            }
        }
        else
        {
            $this->error();
            $this->setClass('alert alert-danger');
            $this->setHtml('<b>Erreur : </b> Vous devez remplir tout les champs');
            return $this->build();
        }
    }
}