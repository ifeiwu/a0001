<article class="show">
    <div class="image" style="background-image:url(<?php echo $this->url($item['image_path'].'/'.$item['image2'], $item['utime']);?>);">&nbsp;</div>
    <div class="text">
        <h1><?php echo $item['title2'];?></h1>
        <p><?php echo $item['summary2'];?></p>
        <?php
        if ($item['url']):
        	$style = $item['url_title_color'] ? 'color:'.$item['url_title_color'].';' : '';
			$style .= $item['url_title_bgcolor'] ? 'background-color:'.$item['url_title_bgcolor'].';' : '';
        ?>
        <a href="<?php echo $item['url'];?>" target="<?php echo $item['url_target'];?>" style="<?php echo $style;?>"><?php echo $item['url_title'];?></a>
    	<?php endif;?>
    </div>
    <a href="<?php echo $this->url();?>" class="home" style="background-image:url(data/<?php echo $site['logo'];?>);"></a>
</article>
