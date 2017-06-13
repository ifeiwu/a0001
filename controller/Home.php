<?php
namespace controller;

use ifeiwu\Controller;

class Home extends Controller
{

	public function _init()
	{
		$site = theme(site());

		$this->layout(true, $site['theme']);
		$this->assign('site', $site);
	}

	public function index()
	{
		$this->display();
	}
	
	public function work()
	{
		$items = db()->select('item', array('id', 'title', 'title_color', 'summary', 'summary_color', 'image', 'image2', 'image_path', 'utime'))
					 ->where('nid = 1 AND state = 1')
					 ->order('sortby DESC, ctime DESC')
					 ->all();

	    $this->assign('items', $items);
		$this->display();
	}
	
	public function show($id)
	{
		$this->layout(false);

		$item = db()->select('item')
					->where(array('id', '=', $id))->get();

    	$this->assign('item', $item);
		$this->display();
	}

}
