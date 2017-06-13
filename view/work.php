<div class="container">
    <div class="swiper-container">
        <div class="swiper-wrapper">
            <?php
			foreach($items as $i => $item):
                $image_path = $item['image_path'];
                $image = $item['image'];
				$utime = $item['utime'];
            ?>
            <div class="swiper-slide" data-path="<?php echo $image_path;?>" data-image="<?php echo $image;?>" data-utime="<?php echo $utime;?>" data-hash="slide<?php echo $i;?>">
                <?php
                $url = 'javascript:;';
				$url_class = '';
                if ($item['image2']) {
                	$url = $this->url('show/'.$item['id']);
					$url_class = 'ajax-popup-link';
                }
                ?>
                <a href="<?php echo $url;?>" class="<?php echo $url_class;?>">
                    <img data-src="<?php echo $this->url($image_path.'/'.$image, $utime);?>" class="swiper-lazy">
                    <div class="swiper-lazy-preloader"></div>
                    <article class="animated">
                        <?php if ($item['title']):?>
                        <h1 class="animated" style="<?php echo $item['title_color']?'color:'.$item['title_color']:'';?>"><?php echo $item['title'];?></h1>
                        <?php endif;?>
                        <?php if ($item['summary']):?>
                        <p class="animated" style="<?php echo $item['summary_color']?'color:'.$item['summary_color']:'';?>"><?php echo $item['summary'];?></p>
                        <?php endif;?>
                    </article>
                </a>
            </div>
            <?php endforeach;?>
        </div>
    </div>
</div>