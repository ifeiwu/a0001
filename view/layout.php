<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8">
    <meta http-equiv="x-ua-compatible" content="ie=edge">
    <meta name="renderer" content="webkit">
    <title><?php echo $site['title'];?></title>
    <meta name="keywords" content="<?php echo $site['keywords'];?>">
    <meta name="description" content="<?php echo $site['description'];?>">
	<!--[if lt IE 9]><script>window.location.href='http://www.ifeiwu.com/ie-browser-upgrade.html';</script><![endif]-->
	<link rel="apple-touch-icon" href="<?php echo $this->url('data/apple-touch-icon.png');?>">
    <link rel="icon" type="image/png" href="<?php echo $this->url('data/favicon.png');?>">
    	
    <link rel="stylesheet" href="<?php echo $this->url('asset/css/reset.css');?>">
    <link rel="stylesheet" href="<?php echo $this->url('asset/css/swiper.css');?>">
    <link rel="stylesheet" href="<?php echo $this->url('asset/css/animate.css');?>">
    <link rel="stylesheet" href="<?php echo $this->url('asset/css/magnific-popup.css');?>">
    <link rel="stylesheet" href="<?php echo $this->url('asset/css/main.css');?>">
    <?php if ($site['skin'] && $site['skin'] != 'default'):?>
    <link rel="stylesheet" href="<?php echo $this->url('asset/css/skin/'.$site['skin'].'.css');?>">
    <?php endif;?>
    <?php if ($site['style']):?>
    <link rel="stylesheet" href="<?php echo $this->url('asset/css/'.$site['style'].'.css');?>">
	<?php endif;?>
		
	<script>
	var items = '<?php echo json_encode($items);?>',
	    swiper_options_custom={
	        autoplay: 0,
	        speed: parseInt('<?php echo $site['swiper_speed'];?>'),
	        effect: 'slide',
	        direction: 'horizontal',
	        slidesPerView: parseInt('<?php echo $site['swiper_slidesPerView'];?>'),
	        spaceBetween: parseInt('<?php echo $site['swiper_spaceBetween'];?>')
	    };
	</script>
	<script src="<?php echo $this->url('asset/js/jquery.js');?>"></script>
	<script src="<?php echo $this->url('asset/js/swiper.js');?>"></script>
	<script src="<?php echo $this->url('asset/js/magnific-popup.js');?>"></script>
	<script src="<?php echo $this->url('asset/js/main.js');?>"></script>
</head>
<body>

	{__CONTENT__}
	
	<?php
	if ($site['stats_open'] == 1)
	{
		$squery = http_build_query(array(
				'r'=>$this->request->root(),
				'm'=>$site['stats_much'],
				'u'=>$site['stats_unit'],
				'd'=>$site['stats_date']
			)
		);
		
		echo '<script src="' . $this->url('asset/js/stats.js?' . $squery) . '"></script>';
	}
	
	if ($site['stats3_open'] == 1) { echo $this->decode($site['stats3_code']); }
	?>

</body>
</html>
