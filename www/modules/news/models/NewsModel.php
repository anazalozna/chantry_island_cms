<?php
namespace News;
/**
 * Created by Ana Zalozna
 * Date: 22/02/17
 * Time: 7:25 PM
 */
class NewsModel extends \Model
{
	/**
	 * Get limited num of news per page
	 *
	 * @param int $page
	 * @return array
	 */
	public function getNews (int $page = 1) :array {
		$sql = "SELECT img, title, text, date, id FROM news
				ORDER BY date DESC
				LIMIT :start_news, :max_news ";

		if(!$page){
			$sql = "SELECT img, title, text, date, id FROM news ORDER BY date DESC ";
		}
		$limits = [
			"start_news"=> ($page - 1) * \Config::get('global')['news_limit'],
			"max_news"=> \Config::get('global')['news_limit']
		];

		$stmt = $this->_pdo->prepare($sql);
		if($page) {
			$stmt->bindParam(':start_news', $limits['start_news'], \PDO::PARAM_INT);
			$stmt->bindParam(':max_news', $limits['max_news'], \PDO::PARAM_INT);
		}
		$stmt->execute();

		$data = [];
		foreach ($stmt as $row){
			$data[] = $row;
		}
		return $data;
	}

	/**
	 * Get a number of all news
	 *
	 * @return int
	 */
	public function getNewsQnt () :int{
		$sql = "SELECT COUNT(*) as num FROM news";

		$result = $this->queryRow($sql);

		return (int) $result['num'];
	}

	/**
	 * Add new news
	 *
	 * @param string $title
	 * @param string $text
	 * @param string $image
	 */
	public function addNews(string $title, string $text, string $image){
		$data = [
			'title' => $title,
			'text' => $text,
			'img' => trim($image, '/'),
			'date' => \Config::getDateTime()->format('Y-m-d H:i:s')
		];
		$this->insertRow('news', $data);
	}

	/**
	 * Get news by id
	 *
	 * @param int $id
	 * @return array
	 */
	public function getNewsByID(int $id): array{
		$sql = "SELECT title, text, img FROM news
				WHERE id =:id";

		return $this->queryRow($sql, ['id' => $id]);
	}

	/**
	 * Update news
	 *
	 * @param int $id
	 * @param string $title
	 * @param string $text
	 * @param string $img
	 * @return bool
	 */
	public function updateNews(int $id, string $title, string $text, string $img): bool{
		$data = [
			'title' => $title,
			'text' => $text,
			'id' => $id
		];

		if($img){
			$sql = "UPDATE news SET title = :title, text = :text, img = :img WHERE id = :id";
			$data = array_merge($data, ['img' => $img]);
		}else{
			$sql = "UPDATE news SET title = :title, text = :text WHERE id = :id";
		}

		try{
			$stmt = $this->_pdo->prepare($sql);
			$stmt->execute($data);
			return True;
		}catch (\PDOException $e){
			return False;
		}
	}

	/**
	 * Delete news
	 *
	 * @param int $id
	 */
	public function delete(int $id){
		$this->deleteById($id, 'news');
	}
}