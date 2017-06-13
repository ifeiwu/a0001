<div class="container" style="margin:0 auto -80px;">
    <div class="index-bg" style="background-image:url(<?php echo $this->url('data/'.$site['home_bg']);?>);"></div>
</div>
<footer class="footer">
    <ul class="ul">
        <?php
        $footer = explode("\n", $site['footer']);
        foreach ($footer as $text) {
            echo "<li>$text</li>";
        }
        ?>
        <li><a href="<?php echo $this->url('home');?>">点击进入</a></li>
    </ul>
</footer>