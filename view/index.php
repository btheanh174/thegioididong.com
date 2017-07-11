<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">	
<html lang="en">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>Thegioididong.com - Siêu thị điện thoại, Tablet, Laptop, Phụ kiện chính hãng</title>
<link href="./view/favicon.ico" rel="shortcut icon" type="image/x-icon"/>
<link rel="stylesheet" href="./view/css/style.css"/>
<script src="./view/js/jquery-1.12.3.min.js"></script>
<script src="./view/js/jscript.js"></script>
</head>

<body>

<header>
    <div class="wrap-main">
        <a class="logo" title="Về trang chủ Thegioididong.com" href="/"><i class="icontgdd-logo"></i></a>
        <form id="search-site" action="/tim-kiem" method="get" onsubmit="return submitSearchForm();" autocomplete="off">
        <input class="topinput" id="search-keyword" name="search-keyword" type="text" placeholder="Bạn tìm gì..." autocomplete="off" onkeydown="CheckTimer()" onkeyup="SuggestSearch(event);" value="" maxlength="50"/>
        <button class="btntop" type="submit"><i class="icontgdd-topsearch"></i></button>
        </form>
        <div id="SuggestSearch"></div>
        <nav>
           <?php
				foreach($menuList as $menu)
				echo '
				<a class='.$menu['class'].' href="./'.$menu['link'].'"><i class='.$menu['hinhanh'].'></i>'.$menu['ten'].'</a>
				'
			?>
        </nav>
    </div>
    <div class="clr"></div>
</header>
<section>
   <aside class="homebanner">
         <div class="slider" style="background-color:#FFF; width:800px; height:360px">
                	<?php
						$i = 1;
						foreach($sliderList as $slider)
						{
							if($i == 6)
							{
								break;
							}
							if($i == 1)
							{
								echo '<input type = "radio" name="slide_switch" id="id'.$i.'" checked>';
							}
							else
							{
								echo '<input type = "radio" name="slide_switch" id="id'.$i.'">';
							}
							echo
								'<label for="id'.$i.'" style="border-radius:5px; width:155px; margin-left:0px; text-align:center">
									<p>'.$slider['ten'].'</p>
								</label><img src="'.$slider['hinhanh'].'" alt="image"></a>';
							$i++;
						}
                    ?>
                </div>
    </aside>

        <div class="rightbanner">
		<?php
			foreach($adsList as $ads)
			echo '<a href="'.$ads['link'].'";"><img src="'.$ads['hinhanh'].'"</a>';
		?>			
		</div>

    <div class="clr"></div>
        <aside class="homenews">
        <figure>
            <a class="toptop" href="/tin-tuc">
                <h2>Tin công nghệ</h2>
            </a>
            <b></b><a href="/tin-tuc">Xem tiếp</a>
        </figure>
        <ul>
			<?php
			foreach($newsList as $news){
				if(!$news['binhluanmoi']){
					echo '<li><a href='.$news['link'].'><img src="./'.$news['hinhanh'].'" alt='.$news['tintuc'].' width="100px" height="60px"><h3>'.$news['tintuc'].' <div class="cyan"><i class="icontgdd-comcyan"></i> '.$news['luotbinhluan'].'</div></h3></a></li>';	
				} else {
					echo '
					<li><a href='.$news['link'].'><img src="./'.$news['hinhanh'].'" alt='.$news['tintuc'].' width="100px" height="60px"><h3>'.$news['tintuc'].' <div class="red"><i class="icontgdd-comred"></i> '.$news['luotbinhluan'].'</div></h3></a></li>
					';
                }
			}
			 ?>
        </ul>
    </aside>

        <ul class="homeproduct">
           <?php
          $a = 0;
    		foreach($productList as $product){
				$a++;
				if($a <= 4){
    			echo '
					
                            <li>
						<a href='.$product['link'].'>
                        <img width="388" height="180" alt="Điện thoại di động Samsung Galaxy Grand Prime G531" src="./'.$product['hinhanh'].'">    
                        <h3>'.$product['ten'].'</h3>
                        <strong>'.$product['gia'].'</strong>
                        <div class="clr"></div>
                        <div></div>
                        <button type="button">'.$product['nutbam'].'</button>
                        <label>'.$product['luotnguoi'].'</label>
                </a>
                <figure class="bginfo">
                    <h3>'.$product['ten'].'</h3>
                    <strong>'.$product['gia'].'</strong>
                    <div>
                        
                    </div>
                    <span>Màn hình: '.$product['manhinh'].'</span><span>HĐH: '.$product['hdh'].'</span><span>CPU: '.$product['cpu'].'</span><span>'.$product['camera'].'</span><span>Dung lượng pin: '.$product['pin'].'</span>
                    <label class="compr">So sánh với...</label>
                </figure>
            </li>';
			}
			if($a == 4)
			{
				echo'</ul>';
				echo'<ul class="homeproduct fullwidth">';
			}
			if($a > 4)
			{
			echo '
					
                            <li>
						<a href='.$product['link'].'>
                        <img width="388" height="180" alt="Điện thoại di động Samsung Galaxy Grand Prime G531" src="./'.$product['hinhanh'].'">    
                        <h3>'.$product['ten'].'</h3>
                        <strong>'.$product['gia'].'</strong>
                        <div class="clr"></div>
                        <div></div>
                        <button type="button">'.$product['nutbam'].'</button>
                        <label>'.$product['luotnguoi'].'</label>
                </a>
                <figure class="bginfo">
                    <h3>'.$product['ten'].'</h3>
                    <strong>'.$product['gia'].'</strong>
                    <div>
                        
                    </div>
                    <span>Màn hình: '.$product['manhinh'].'</span><span>HĐH: '.$product['hdh'].'</span><span>CPU: '.$product['cpu'].'</span><span>'.$product['camera'].'</span><span>Dung lượng pin: '.$product['pin'].'</span>
                    <label class="compr">So sánh với...</label>
                </figure>
            </li>';
			}
			if($a == 10)
			{
				echo'</ul>';
			}
		
			}
            ?>
			
   
   

    <div class="clr"></div>
    <div class="moreproduct">
       <?php
        foreach($statisticalList as $statistical)
            echo'<a href="'.$statistical['link'].'"><span>'.$statistical['so'].'</span>'.$statistical['ten'].'</a>';
       ?>
    </div>

    
</section>
<div id="divBehaviorProduct"></div>
<div class="keyword">
        <span>Tìm kiếm nhiều: </span>
        <?php
        foreach($seachList as $seach){
            	echo'<a href="'.$seach['link'].'">• '.$seach['ten'].'</a>';
        }
        ?>
    </div>
<footer>    
<div class="rowfoot1">
    <ul class="colfoot">
        <li>
            <h4>Hỗ trợ khách hàng</h4>
        </li>
		<?php
		$a = 0;
    	foreach($supportList as $support){
			$a++;
			if($a <= 4){
				echo ' <li><a href="./'.$support['link'].'" title='.$support['hint'].'>'.$support['ten'].'</a></li>';
			}
			if($a == 4)
			{
				echo '<li class="showmore"><a href="javascript:ShowMoreFooterSupportLink()" title="Xem thêm">Xem thêm ▾</a></li>';
			}
			if($a > 4)
			{
				echo '<li class="hidden"><a href="./'.$support['link'].'" title='.$support['hint'].'>'.$support['ten'].'</a></li>';
			}
		}
		?>
    </ul>
    <ul class="colfoot">
        <li>
            <h4>Thegioididong.com</h4>
        </li>
        	<?php
            	foreach($introduceList as $introduce){
                    echo'<li><a href="'.$introduce['link'].'" target="_blank" title="'.$introduce['ten'].'">'.$introduce['ten'].' <span>'.$introduce['chuthich'].'</span></a></li>';
                }
            ?>
            <li>
                <a class="viewmb" rel="nofollow" href="javascript:window.location.href='/?sclient=mobile'" title="Xem bản mobile">Xem bản mobile <i class="icontgdd-mbile"></i>
                </a>
            </li>
    </ul>
    <ul class="colfoot answers">
        <li>
            <h4>Có thắc mắc?</h4>
        </li>
        <li>
            <p>Bán hàng (7:30 - 22:00)</p>
            <p><b><?php echo $phoneList[0]['sodienthoai'] ?></b> Hoặc <b><?php echo $phoneList[1]['sodienthoai'] ?></b></p>
            <p>Góp ý, khiếu nại (8:00 - 21:30)<strong><?php echo $phoneList[2]['sodienthoai'] ?></strong></p>
            <p>Bảo hành sản phẩm (8:00 - 21:00)<strong><?php echo $phoneList[3]['sodienthoai'] ?></strong></p>
        </li>
    </ul>

    <ul class="colfoot collast">
        <li>
            <a href="javascript:window.location.href='/?layout=shopping'" class="chooseviews choosing"><span>Chuyển sang giao diện</span> Mua Nhanh</a>
            <a href="javscript:;" class="chooseviews"><span>Bạn đang ở giao diện</span> Xem Thông Tin</a>
        </li>
        <li>
            <a target="_blank" href="//facebook.com/thegioididongcom" class="linkfb"><i class="icontgdd-share1"></i>
                2.1tr
            </a>
            <a target="_blan
            k" href="//www.youtube.com/user/TGDDVideoReviews?sub_confirmation=1" class="linkyt"><i class="icontgdd-share2"></i>
                51.3k
            </a>
            <a target="_blank" href="//www.dienmayxanh.com" class="dmx"><i class="icontgdd-dmx"></i></a>
            <span class="likesite"></span>
        </li>
        <li class="lione">
            <b>Ứng dụng TGDD trên mobile</b>
			<?php
			foreach($appList as $app)
			{
				echo '<a href="./'.$app['link'].'" class="'.$app['ten'].'" target="_blank"><i class="'.$app['hinhanh'].'"></i></a>';
			}
			?>
 
        </li>
    </ul>
</div>
<div class="rowfoot2">
    <div class="ctn">
        <p>
            <?php echo $addressList[0]['ten'] ?> <a href="/tos" title="Chính sách sử dụng web">Chính sách sử dụng web</a><br>
            Văn phòng:<a href="/lien-he"><i class="icontgdd-map"></i><?php echo $addressList[0]['diachi'] ?></a><br>
            <?php echo $addressList[0]['chungnhan'] ?><br>
            Chịu trách nhiệm nội dung: <?php echo $addressList[0]['chiutrachnhiem'] ?>

        </p>
        <div class="pagepay">
            <span>Bạn có thể thanh toán với</span>
            <a href="/thanh-toan" target="_blank" title="Tiền mặt, Chuyển khoản, Thẻ ATM nội địa, Thẻ VISA, Thẻ Master">
			<?php
			foreach($payList as $pay)
			{
                echo '<i class="'.$pay['hinhanh'].'"></i>';
			}
			?>
            </a>
        </div>
        <div class="registered">
            <span>Chứng nhận SGD TMĐT</span>
            <a target="_blank" rel="nofollow" title="Chứng nhận SGD TMĐT" href="http://online.gov.vn/HomePage/CustomWebsiteDisplay.aspx?DocId=20098">
                <i class="icontgdd-bct"></i>
            </a>
        </div>
        <div class="ssl">
            <span>Chứng nhận Website bảo mật</span>
            <a target="_blank" rel="nofollow" title="Chứng nhận Website bảo mật" href="https://trustsealinfo.websecurity.norton.com/splash?form_file=fdf/splash.fdf&amp;dn=www.thegioididong.com&amp;lang=en">
                <i class="icontgdd-norton"></i>
            </a>
        </div>
    </div>
</div>
</footer>

</body>
</html>