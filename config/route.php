<?php
return array(

	'/' => array(
		'method' => 'GET',
		'controller' => 'Home',
		'action' => 'index'
	),
	
	'/home' => array(
		'method' => 'GET',
		'controller' => 'Home',
		'action' => 'work'
	),
	
	'/show/(\d+)' => array(
		'method' => 'GET',
		'controller' => 'Home',
		'action' => 'show'
	),
	
	// 流量统计
	'/stats' => array(
		'method' => 'POST',
		'controller' => 'Stats',
		'action' => 'index'
	),
);
