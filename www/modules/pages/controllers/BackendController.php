<?php
/**
 * Created by Ana Zalozna
 * Date: 07.03.17
 * Time: 16:54
 */

namespace Pages;


class BackendController extends \BController
{
	public function actionPages(){
		$user_model = \App::getInstance()->loadModel('user/user');
		if(!$user_model->checkLogin() || !$user_model->checkAccess([1])){
			\App::getInstance()->redirect('/admin');
		}

		$page_model = \App::getInstance()->loadModel('pages/pages');

		$data = [
			'pages' => $page_model->getPages()
		];

		\App::getInstance()->setParam('title', 'Pages');

		$this->render('backend/pages', $data);
	}

	public function actionEdit(){
		$user_model = \App::getInstance()->loadModel('user/user');
		if(!$user_model->checkLogin() || !$user_model->checkAccess([1]) || !isset($_GET['id'])){
			\App::getInstance()->redirect('/admin');
		}

		$page_model = \App::getInstance()->loadModel('pages/pages');
		$errors = [];

		if($_SERVER['REQUEST_METHOD'] == 'POST'){
			$fields = ['title', 'alias', 'content'];
			foreach ($fields as $field){
				if(!isset($_POST[$field]) || !$_POST[$field]){
					$errors[] = "$field is empty!";
				}
			}

			if(!$errors){
				if(!$page_model->updatePage($_GET['id'], $_POST)){
					$errors[] = "Error saving data";
				}
			}
		}

		$page = $page_model->getPageByID($_GET['id']);

		$data = [
			'title' => $page['main_title'],
			'alias' => $page['alias'],
			'content' => $page['content'],
			'errors' => $errors
		];

		\App::getInstance()->setParam('title', 'Change page');

		$this->render('backend/edit_page', $data);
	}

	public function actionGallery(){
		$user_model = \App::getInstance()->loadModel('user/user');
		if(!$user_model->checkLogin() || !$user_model->checkAccess([1])){
			\App::getInstance()->redirect('/admin');
		}

		$gallery_model = \App::getInstance()->loadModel('pages/gallery');

		$data = [
			'images' => $gallery_model->getThumbs()
		];

		$this->render('backend/gallery', $data);
	}

	public function actionAddImage(){
		$user_model = \App::getInstance()->loadModel('user/user');
		if(!$user_model->checkLogin() || !$user_model->checkAccess([1])){
			\App::getInstance()->redirect('/admin');
		}

		$gallery_model = \App::getInstance()->loadModel('pages/gallery');

		$data = [
			'errors' => []
		];

		if($_SERVER['REQUEST_METHOD'] == 'POST'){
			$fields = ['title',  'text'];
			foreach ($fields as $field){
				if(!isset($_POST[$field]) || !$_POST[$field]){
					$data['errors'][] = "$field is empty!";
				}
			}

			$img_full = "static/img/gallery/".$_FILES['img']['name'];
			$img_min = "static/img/gallery/min/".$_FILES['img']['name'];

			// save images
			$gallery_model->saveImages($img_full, $img_min);

			// dave to db
			if(!$data['errors'] && isset($_FILES['img'])){

				$db_columns = [
					'thumb' => $img_min,
					'img' => $img_full,
				];

				$db_columns = array_merge($db_columns, $_POST);
				$gallery_model->addGallery($db_columns);

				\App::getInstance()->redirect('/admin/gallery/add');
			}
		}


		$this->render('backend/gallery_add', $data);
	}

	public function actionEditImage(){
		$model = \App::getInstance()->loadModel('user/user');
		if(!$model->checkLogin() || !$model->checkAccess([1]) || !isset($_GET['id'])){
			\App::getInstance()->redirect('/admin');
		}

		$gallery_model = \App::getInstance()->loadModel('pages/gallery');

		$data = [
			'errors' => []
		];

		if($_SERVER['REQUEST_METHOD'] == 'POST'){
			$fields = ['title',  'text'];
			foreach ($fields as $field){
				if(!isset($_POST[$field]) || !$_POST[$field]){
					$data['errors'][] = "$field is empty!";
				}
			}

			$db_columns = [];

			// images
			if(isset($_FILES['img']['name']) && $_FILES['img']['name']){
				$gallery_model->deleteImages($_GET['id']);

				$img_full = "static/img/gallery/".$_FILES['img']['name'];
				$img_min = "static/img/gallery/min/".$_FILES['img']['name'];

				$db_columns = [
					'thumb' => $img_min,
					'img' => $img_full,
				];

				// save images
				$gallery_model->saveImages($img_full, $img_min);
			}

			// dave to db
			if(!$data['errors'] && isset($_FILES['img'])){
				$db_columns = array_merge($db_columns, $_POST);
				$gallery_model->editGallery($_GET['id'], $db_columns);
			}
		}

		$data = array_merge($data, $gallery_model->getImageData($_GET['id']));

		$this->render('backend/gallery_edit', $data);
	}

	public function actionDeleteImage(){
		$model = \App::getInstance()->loadModel('user/user');
		if(!$model->checkLogin() || !$model->checkAccess([1]) || !isset($_GET['id'])){
			\App::getInstance()->redirect('/admin');
		}

		$gallery_model = \App::getInstance()->loadModel('pages/gallery');
		$gallery_model->delete($_GET['id']);

		\App::getInstance()->redirect('/admin/gallery');
	}
}