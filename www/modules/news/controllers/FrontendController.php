<?php
namespace News;
/**
 * Created by Ana Zalozna
 * Date: 22/02/17
 * Time: 7:18 PM
 */
class FrontendController extends \Controller
{
	/**
	 * Operate with news
	 * get a page num
	 * show the news
	 */
	public function actionNews() {
		$model = \App::getInstance()->loadModel('news/news');
		if(isset($_GET['page'])){
			$page = $_GET['page'];
		}else{
			$page = 1;
		}

		$data = [
			"news" => $model->getNews($page),
			"pages_qnt" => ceil($model->getNewsQnt() / \Config::get('global')["news_limit"]),
			"curr_page" => $page,
		];

		\App::getInstance()->setParam('title', 'Chantry Island News');
		$this->render('frontend/news', $data);

	}

}