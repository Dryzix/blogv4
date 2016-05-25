<?php
/**
 * Created by PhpStorm.
 * User: Tom
 * Date: 26/01/2016
 * Time: 10:10
 */

namespace BLOG\Task\Admin\Categories;


use PHX\Core\Motor;
use PHX\Core\Task\Task;

class DeleteTask extends Task
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
        if(isset($_POST['token_delCateg'], $_POST['id']) && $auth->isTokenValid('delCateg', $_POST['token_delCateg']))
        {
            $db->delete('categories')->where('id=?')->setValues([$_POST['id']])->execute();
            $this->setText('Suppression réussie')
                 ->addClass('alert alert-success')
                 ->fadeOut('[data-categid="' . $_POST['id'] . '"]')
                 ->fadeOut('[data-box="ajaxHide"]')
                 ->fadeIn($this->defaultMessageBox)
                 ->fadeOut($this->defaultMessageBox, 3000);
        }

        return $this->build();
    }
}