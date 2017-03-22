<?php
/**
 * Created by Ana Zalozna.
 * Date: 10.03.17
 * Time: 12:47
 */

namespace News;


class BackendController extends \BController
{
	public function actionNews(){
		$user_model = \App::getInstance()->loadModel('user/user');
		if(!$user_model->checkLogin() || !$user_model->checkAccess([1])){
			\App::getInstance()->redirect('/admin');
		}

		$news_model = \App::getInstance()->loadModel('news/news');

		$data = [
			'news' => $news_model->getNews(0)
		];

		\App::getInstance()->setParam('title', 'News');

		$this->render('backend/news', $data);
	}

	public function actionAdd(){
		$user_model = \App::getInstance()->loadModel('user/user');
		if(!$user_model->checkLogin() || !$user_model->checkAccess([1])){
			\App::getInstance()->redirect('/admin');
		}

		$news_model = \App::getInstance()->loadModel('news/news');

		$data = [
			'errors' => [],
		];

		if($_SERVER['REQUEST_METHOD'] == 'POST'){
			if(!isset($_FILES['img'])){
				$data['errors'][] = 'Image is required!';
			}

			$fields = ['title', 'text'];
			foreach ($fields as $field){
				if(!isset($_POST[$field]) || !$_POST[$field]){
					$data['errors'][] = "$field is empty!";
				}
			}

			if(!$data['errors']){
				$new_path = "/static/img/news/".$_FILES['img']['name'];

				if(rename($_FILES['img']['tmp_name'], $_SERVER['DOCUMENT_ROOT'].$new_path)){
					$news_model->addNews($_POST['title'], $_POST['text'], $new_path);
					\App::getInstance()->redirect('/admin/news/add');
				}else{
					$data['errors'][] = "Fail!";
				}
			}
		}

		\App::getInstance()->setParam('title', 'Add new news');

		$this->render('backend/add', $data);
	}

	public function actionEdit(){
		$user_model = \App::getInstance()->loadModel('user/user');
		if(!$user_model->checkLogin() || !$user_model->checkAccess([1]) || !isset($_GET['id'])){
			\App::getInstance()->redirect('/admin');
		}

		$news_model = \App::getInstance()->loadModel('news/news');
		$errors = [];

		if($_SERVER['REQUEST_METHOD'] == 'POST'){
			$fields = ['title', 'text'];
			foreach ($fields as $field){
				if(!isset($_POST[$field]) || !$_POST[$field]){
					$errors[] = "$field is empty!";
				}
			}

			if(!$errors){
				$new_path = '';
				if(isset($_FILES['img']) && $_FILES['img']['tmp_name']){
					$new_path = "/static/img/news/".$_FILES['img']['name'];
					rename($_FILES['img']['tmp_name'], $_SERVER['DOCUMENT_ROOT'].$new_path);
				}

				if(!$news_model->updateNews($_GET['id'], $_POST['title'], $_POST['text'], trim($new_path, '/'))){
					$errors[] = "Error saving data";
				}
			}
		}

		$news = $news_model->getNewsByID($_GET['id']);

		$data = [
			'title' => $news['title'],
			'text' => $news['text'],
			'img' => $news['img'],
			'errors' => $errors
		];

		\App::getInstance()->setParam('title', 'Change news');

		$this->render('backend/edit_news', $data);
	}

	public function actionDelete(){
		$model = \App::getInstance()->loadModel('user/user');
		if(!$model->checkLogin() || !$model->checkAccess([1]) || !isset($_GET['id'])){
			\App::getInstance()->redirect('/admin');
		}

		$news_model = \App::getInstance()->loadModel('news/news');
		$news_model->delete($_GET['id']);

		\App::getInstance()->redirect('/admin/news');
	}
}