<?php
/**
 * Created by PhpStorm.
 * User: Tom
 * Date: 26/01/2016
 * Time: 10:10
 */

namespace BLOG\Task\Admin\Articles;


use PHX\Core\Motor;
use PHX\Core\Task\Task;

class ModifyTask extends Task
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

        if(isset($_POST['token_modifArt'], $_POST['id']) && $auth->isTokenValid('modifArt', $_POST['token_modifArt'], false))
        {
            if(isset($_POST['title'], $_POST['img_url'], $_POST['date'], $_POST['hook'], $_POST['content'], $_POST['categ']))
            {
                $db->select('title, COUNT(*) AS verif')->from(['articles'])->where('id=?')->setValues([$_POST['id']])->execute();
                $article = $db->next();
                if($article->verif != 0)
                {
                    $date = new \DateTime($_POST['date']);
                    $db->update('articles')->set([
                                                        'idUser' => $auth->get('id'),
                                                        'title' => $_POST['title'],
                                                        'hook' => $_POST['hook'],
                                                        'content' => $_POST['content'],
                                                        'url' => $_POST['img_url'],
                                                        'date' => $date->format('Y-m-d H:i:s'),
                                                        'idCateg' => $_POST['categ']
                                                        ])
                        ->where('id=:id')
                        ->setValues(['id' => $_POST['id']]);

                    $db->execute();

                    if($article->title != $_POST['title'])
                    {
                        $this->setText($_POST['title'], '[data-ajax="title"]');
                    }

                    $this->setText('Modifications enregitrées')
                         ->addClass('alert alert-success')
                         ->fadeIn($this->defaultMessageBox)
                         ->fadeOutIn($this->defaultMessageBox, 2500);

                    return $this->build();
                }
            }
        }
    }
}