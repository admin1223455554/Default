<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Strict//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd">
<html xmlns="http://www.w3.org/1999/xhtml" xml:lang="ru" lang="ru">
<head>
{header}
<noscript><meta http-equiv="refresh" content="0; URL=/badbrowser.php"></noscript>
<link media="screen" href="{theme}/style/style_blue.css" type="text/css" rel="stylesheet" />  
{js}[not-logged]<script type="text/javascript" src="{theme}/js/reg.js"></script>[/not-logged]
<script type="text/javascript">

  var _gaq = _gaq || [];
  _gaq.push(['_setAccount', 'UA-17403224-1']);
  _gaq.push(['_trackPageview']);

  (function() {
    var ga = document.createElement('script'); ga.type = 'text/javascript'; ga.async = true;
    ga.src = ('https:' == document.location.protocol ? 'https://ssl' : 'http://www') + '.google-analytics.com/ga.js';
    var s = document.getElementsByTagName('script')[0]; s.parentNode.insertBefore(ga, s);
  })();

</script>
</head>
<body onResize="onBodyResize()" class="no_display">
<div class="scroll_fix_bg no_display" onMouseDown="myhtml.scrollTop()"><div class="scroll_fix_page_top">Наверх</div></div>
<div id="doLoad"></div>
<div class="head">
 <div class="autowr">
  [logged]<a href="{my-page-link}" class="udinsMy" onClick="Page.Go(this.href); return false;"></a>[/logged]
  [not-logged]<a href="/" class="udins"></a>[/not-logged]
  <div class="headmenu">
   [logged]
   <a href="/?go=search&online=1" onClick="Page.Go(this.href); return false;">
    <div class="headm_posic">
	<img src="{theme}/images/spacer.gif" class="headm_ic_friend" /><br />
	 Люди
    </div>
   </a>
   <a href="/?go=search&type=2" onClick="Page.Go(this.href); return false;">
    <div class="headm_posic"><img src="{theme}/images/spacer.gif" class="headm_ic_videos" /><br />
	 Видео
    </div>
   </a>
   <a href="/?go=search&type=5" onClick="Page.Go(this.href); return false;">
    <div class="headm_posic"><img src="{theme}/images/spacer.gif" class="headm_ic_music" /><br />
	 Музыка
    </div>
   </a>
   <a href="/audio" onClick="doLoad.js(0); player.open(); return false;">
    <div class="headm_posic" style="padding:0;margin:5px 0 0 -15px"><img src="/templates/Default/images/spacer.gif" class="headm_ic_music_play" id="fplayer_pos" />
    </div>
   </a>   
    <a href="/apps" onClick="Page.Go(this.href); return false;">
    <div class="headm_posic"><img src="/templates/Default/images/spacer.gif" class="headm_ic_games" /><br />
  Игры
    </div>
   </a>
   <a href="/?go=search&type=4" onClick="Page.Go(this.href); return false;">
    <div class="headm_posic"><img src="{theme}/images/spacer.gif" class="headm_ic_groups" /><br />
	 Группы
    </div>
   </a>
   <a href="/?go=search&type=3" onClick="Page.Go(this.href); return false;">
    <div class="headm_posic"><img src="{theme}/images/spacer.gif" class="headm_ic_notes" /><br />
	 Заметки
    </div>
   </a>   
   <a href="/" onClick="gSearch.open_tab(); return false;" id="se_link">
    <div class="headm_posic"><img src="{theme}/images/spacer.gif" class="headm_ic_se" /><br />
	 Поиск
    </div>
   </a>
   <a href="/settings" onClick="Page.Go(this.href); return false;">
    <div class="headm_posic"><img src="{theme}/images/spacer.gif" class="headm_ic_settings" /><br />
	 Настройки
    </div>
   </a>
   <a href="/support" onClick="Page.Go(this.href); return false;">
    <div class="headm_posic">
	<div id="new_support">{new-support}</div>
	<img src="{theme}/images/spacer.gif" class="headm_ic_support" /><br />
	 Помощь
    </div>
   </a>
   <a href="/?act=logout">
    <div class="headm_posic">
	<img src="{theme}/images/spacer.gif" class="headm_ic_logout" /><br />
	 Выйти
    </div>
   </a>
   <!--search-->
   <div class="search_tab no_display" id="search_tab" style="margin-left:-259px">
    <input type="text" value="Поиск" class="fave_input search_input" 
		onBlur="if(this.value=='') this.value='Поиск';this.style.color = '#c1cad0';" 
		onFocus="if(this.value=='Поиск')this.value='';this.style.color = '#000'" 
		onKeyPress="if(event.keyCode == 13) gSearch.go();"
		onKeyUp="FSE.Txt()"
	id="query" maxlength="65" />
	<div id="search_types">
	 <input type="hidden" value="1" id="se_type" />
	 <div class="search_type" id="search_selected_text" onClick="gSearch.open_types('#sel_types'); return false">по людям</div>
	 <div class="search_alltype_sel no_display" id="sel_types">
	  <div id="1" onClick="gSearch.select_type(this.id, 'по людям'); FSE.GoSe($('#query').val()); return false" class="search_type_selected">по людям</div>
	  <div id="2" onClick="gSearch.select_type(this.id, 'по видеозаписям'); FSE.GoSe($('#query').val()); return false">по видеозаписям</div>
	  <div id="3" onClick="gSearch.select_type(this.id, 'по заметкам');  FSE.GoSe($('#query').val()); return false">по заметкам</div>
	  <div id="4" onClick="gSearch.select_type(this.id, 'по сообществам'); FSE.GoSe($('#query').val()); return false">по сообществам</div>
	  <div id="5" onClick="gSearch.select_type(this.id, 'по аудиозаписям');  FSE.GoSe($('#query').val()); return false">по аудиозаписям</div>
	 </div>
	</div>
	<div class="button_div fl_l margin_left"><button onClick="gSearch.go(); return false" id="se_but">Найти</button></div>
   </div>
   <div class="fast_search_bg no_display">
   <a href="/" style="padding:12px;background:#eef3f5" onClick="gSearch.go(); return false" onMouseOver="FSE.ClrHovered(this.id)" id="all_fast_res_clr1"><text>Искать</text> <b id="fast_search_txt"></b><div class="fl_r fast_search_ic"></div></a>
   <span id="reFastSearch"></span>
   </div>
   <!--/search-->[/logged]
  </div>
 </div>
</div>
<div class="clear"></div>
<div style="margin-top:49px;"></div>
<div class="autowr">
 [not-logged]<div class="leftpanel">
  <form method="POST" action="">
   <div class="flLg">E-Mail</div><input type="text" name="email" id="log_email" class="inplog" maxlength="50" />
   <div class="flLg">Пароль</div><input type="password" name="password" id="log_password" class="inplog" maxlength="50" />
   <div class="logpos clear">
    <div class="button_div"><button name="log_in" id="login_but" style="width:138px">Войти</button></div>
	<div style="margin-top:5px"><a href="/restore" onClick="Page.Go(this.href); return false">Не можете войти?</a></div>
   </div>
  </form>
 </div>[/not-logged]
 [logged]
 <div class="newlpa">
      <a href="{my-page-link}" onClick="Page.Go(this.href); return false;"><img src="{theme}/images/icons/14.png" />Моя Страница</a>
  <a href="/friends{requests-link}" onClick="Page.Go(this.href); return false;" id="requests_link"><img src="{theme}/images/icons/1.png" />Мои Друзья <span id="new_requests">{demands}</span></a>
  <a href="/albums/{my-id}" onClick="Page.Go(this.href); return false;" id="requests_link_new_photos"><img src="{theme}/images/icons/2.png" />Мои Фотографии <span id="new_photos">{new_photos}</span></a>
  <a href="/videos" onClick="Page.Go(this.href); return false;"><img src="{theme}/images/icons/3.png" />Мои Видеозаписи</a>
  <a href="/audio"><img src="{theme}/images/icons/4.png" />Мои Аудиозаписи</a>
  <a href="/messages" onClick="Page.Go(this.href); return false;"><img src="{theme}/images/icons/5.png" />Мои Сообщения <span id="new_msg">{msg}</span></a>
  <a href="/groups" onClick="Page.Go(this.href); return false;"><img src="{theme}/images/icons/6.png" />Мои Группы</a>
  <a href="/notes" onClick="Page.Go(this.href); return false;"><img src="{theme}/images/icons/8.png" />Мои Заметки</a>
  <a href="/news{news-link}" onClick="Page.Go(this.href); return false;" id="news_link"><img src="{theme}/images/icons/7.png" />Мои Новости <span id="new_news">{new-news}</span></a>
  <a href="/docs" onClick="Page.Go(this.href); return false;"><img src="{theme}/images/icons/8a.png" />Мои Документы</a>  
  <a href="/balance" onClick="Page.Go(this.href); return false;" id="ubm_link"><img src="{theme}/images/icons/9.png" />Мой Баланс <span id="new_ubm"></span></a>
  <a href="/fave" onClick="Page.Go(this.href); return false;"><img src="{theme}/images/icons/10.png" />Мои Закладки</a>
  <a href="/settings" onClick="Page.Go(this.href); return false;"><img src="{theme}/images/icons/gear.png" />Мои Настройки</a>
 </div>
 [/logged]
 <div class="content" [logged]style="width:800px;"[/logged]>
  [not-aviable=main|restore]<div class="cont_border_left">
   <div class="cont_border_right">
    <div class="speedbar [speedbar]no_display[/speedbar]" id="speedbar">{speedbar}</div>
    <div class="padcont">	 <div id="audioPlayer"></div>
	 <div id="page">{info}{content}</div>
	 <div class="clear"></div>
	</div>
   </div>
  </div>
  <div class="cont_border_bottom"></div>[/not-aviable]
    [aviable=main|restore]
  <div class="mainbgnew" id="page">
   {info}
   [not-aviable=restore]<div class="mainpad">
    <span id="text1" class="abcss"><div class="mainbtit">Добро пожаловать!</div>
    <div class="manides">
	в социальную сеть "ВКонтакте.ру"<br /><br />
    Постоянный контакт в нете с близкими, друзьями и коллегами
    </div></span>
    <span id="text2" class="no_display abcss"><div class="mainbtit">Общайся с друзьями</div>
    <div class="manides">
	Личная страница вида <font color="#f14515">login.vnete.by</font><br />
	Доступность по гостевому <font color="#eb7127">By</font><font color="#4e88c7">Fly</font><br /><br />	 	
    Обменивайся сообщениями с друзьями из Вконтакте не покидая ВНете!BY	
    </div></span> 
    <span id="text3" class="no_display abcss"><div class="mainbtit">Мобильная версия m.vnete.by</div>
    <div class="manides">
     Мобильная версия поможет Вам оставаться в нете даже если Вы далеко от компьютера	 
    </div></span>   
    <span id="text4" class="no_display abcss"><div class="mainbtit">Поисковик ВНете!BY</div>
    <div class="manides">
     Ищите нужную Вам информацию не тратя денег за трафик
	  <br />	 
    </div></span>	
    <div class="mainregbu" onClick="$('#reg').show()"><script type="text/javascript" src="//yandex.st/share/share.js" charset="utf-8"></script>
<div class="yashare-auto-init" data-yashareL10n="ru" data-yashareType="none" data-yashareQuickServices="vkontakte,facebook,twitter,odnoklassniki,moimir,gplus"></div> 
</div>
   </div>
   <img src="{theme}/images/ajaxslide/1.png" id="slide" alt="" title="" align="right" />
   <div class="clear"></div>
   <center><div class="mainnmenu">
    <div onclick="$('#slide').attr('src', '{theme}/images/ajaxslide/1.png'); $('.abcss').hide(); $('#text1').show()">Добро пожаловать |</div>
    <div onclick="$('#slide').attr('src', '{theme}/images/ajaxslide/1.png'); $('.abcss').hide(); $('#text2').show()">Комуникация |</div>
    <div onclick="$('#slide').attr('src', '{theme}/images/ajaxslide/1.png'); $('.abcss').hide(); $('#text3').show()">ВНете Mobile |</div>
    <div onclick="$('#slide').attr('src', '{theme}/images/ajaxslide/1.png'); $('.abcss').hide(); $('#text4').show()">Поисковик</div>
   </div>
</center>
   <div class="clear"></div>[/not-aviable]
   {content}
   <div class="clear"></div>
  </div>
  [/aviable]
  <div class="footer">
   <a href="/?go=search&online=1" onClick="Page.Go(this.href); return false">люди</a>
   <a href="/?go=search&type=4" onClick="Page.Go(this.href); return false">сообщества</a>
   <a href="/?go=search&type=2" onClick="Page.Go(this.href); return false">видео</a>
   <a href="/?go=search&type=5" onClick="Page.Go(this.href); return false">музыка</a>
   <a href="/support?act=new" onClick="Page.Go(this.href); return false">помощь</a>
   <a href="/blog" onClick="Page.Go(this.href); return false">блог</a><br /><br />
   ВКонтакте &copy; 2006-2012
<br />
   <small><a href="/u1" onClick="Page.Go(this.href); return false">Павел Дуров</a></small>
  </div>
 </div>
</div>
[logged]<script type="text/javascript">
function upClose(xnid){
	$('#event'+xnid).remove();
	$('#updates').css('height', $('.update_box').size()*123+'px');
}
function GoPage(event, p){
	var oi = (event.target) ? event.target.id: ((event.srcElement) ? event.srcElement.id : null);
	if(oi == 'no_ev' || oi == 'update_close' || oi == 'update_close2') return false;
	else {
		pattern = new RegExp(/photo[0-9]/i);
		pattern2 = new RegExp(/video[0-9]/i);
		if(pattern.test(p))
			Photo.Show(p);
		else if(pattern2.test(p)){
			vid = p.replace('/video', '');
			vid = vid.split('_');
			videos.show(vid[1], p, location.href);
		} else
			Page.Go(p);
	}
}
$(document).ready(function(){
	setInterval(function(){
		$.post('/index.php?go=updates', function(d){
			row = d.split('|');
			if(d && row[1]){
				if(row[0] == 1) uTitle = 'Новый ответ на стене';
				else if(row[0] == 2) uTitle = 'Новый комментарий к фотографии';
				else if(row[0] == 3) uTitle = 'Новый комментарий к видеозаписи';
				else if(row[0] == 4) uTitle = 'Новый комментарий к заметке';
				else if(row[0] == 5) uTitle = 'Новый ответ на Ваш комментарий';
				else if(row[0] == 6) uTitle = 'Новый ответ в теме';
				else if(row[0] == 7) uTitle = 'Новый подарок';
				else if(row[0] == 8) uTitle = 'Новое сообщение';
				else if(row[0] == 9) uTitle = 'Новая оценка';				
				else if(row[0] == 10) uTitle = 'Ваша запись понравилась';
				else if(row[0] == 11) uTitle = 'Новая заявка';
				else if(row[0] == 12) uTitle = 'Заявка принята'; 				
				else uTitle = 'Событие';
				if(row[0] == 8){
					sli = row[6].split('/');
					tURL = (location.href).replace('http://'+location.host, '').replace('/', '').split('#');
					if(!sli[2] && tURL[0] == 'messages') return false;
					if($('#new_msg').text()) msg_num = parseInt($('#new_msg').text().replace(')', '').replace('(', ''))+1;
					else msg_num = 1;
					$('#new_msg').html("<div>"+msg_num+"</div>");
				}
				    setTimeout('upClose('+row[4]+');', 10000);
				temp = '<div class="update_box cursor_pointer" id="event'+row[4]+'" onClick="GoPage(event, \''+row[6]+'\'); upClose('+row[4]+')"><div class="update_box_margin"><div style="height:19px"><span>'+uTitle+'</span><div class="update_close fl_r no_display" id="update_close" onMouseDown="upClose('+row[4]+')"><div class="update_close_ic" id="update_close2"></div></div></div><div class="clear"></div><div class="update_inpad"><a href="/u'+row[2]+'" onClick="Page.Go(this.href); return false"><div class="update_box_marginimg"><img src="'+row[5]+'" id="no_ev" /></div></a><div class="update_data"><a id="no_ev" href="/u'+row[2]+'" onClick="Page.Go(this.href); return false">'+row[1]+'</a>&nbsp;&nbsp;'+row[3]+'</div></div><div class="clear"></div></div></div>';
				$('#updates').html($('#updates').html()+temp);
				var beepThree = $("#beep-three")[0];
				beepThree.play();
				if($('.update_box').size() <= 5) $('#updates').animate({'height': (123*$('.update_box').size())+'px'});
				if($('.update_box').size() > 5){
					evFirst = $('.update_box:first').attr('id');
					$('#'+evFirst).animate({'margin-top': '-123px'}, 400, function(){
						$('#'+evFirst).fadeOut('fast', function(){
							$('#'+evFirst).remove();
						});
					});
				}
			}
		});
	}, 2000);
});
</script>
<div class="no_display"><audio id="beep-three" controls preload="auto"><source src="{theme}/images/soundact.ogg"></source></audio></div>[/logged]
<div id="updates"></div>
<div class="clear"></div>
</body>
</html>