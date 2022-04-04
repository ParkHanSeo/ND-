<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<jsp:include page="/WEB-INF/views/common/header.jsp">
	<jsp:param value="1:1문의" name="title"/>
</jsp:include>
<head>
<html xmlns="http://www.w3.org/1999/xhtml" xml:lang="en" style="height: auto; min-height: 100%;"><head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<title>AdminLTE 2 | Dashboard</title>
<!-- Tell the browser to be responsive to screen width -->
<meta content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no" name="viewport">
<!-- Bootstrap 3.3.7 -->
<link rel="stylesheet" href="/html/css/bootstrap.min.css">
<!-- Font Awesome -->
<link rel="stylesheet" href="/html/css/font-awesome.min.css">
<!-- Ionicons -->
<link rel="stylesheet" href="//mir9.co.kr/resource/js/AdminLTE-2.4.2/bower_components/Ionicons/css/ionicons.min.css">
<!-- jvectormap -->
<link rel="stylesheet" href="//mir9.co.kr/resource/js/AdminLTE-2.4.2/bower_components/jvectormap/jquery-jvectormap.css">
<!-- Theme style -->
<link rel="stylesheet" href="//mir9.co.kr/resource/js/AdminLTE-2.4.2/dist/css/AdminLTE.min.css">
<!-- AdminLTE Skins. Choose a skin from the css/skins folder instead of downloading all of them to reduce the load. -->
<link rel="stylesheet" href="//mir9.co.kr/resource/js/AdminLTE-2.4.2/dist/css/skins/_all-skins.min.css">
<link href="//mir9.co.kr/resource/css/admin.css" rel="stylesheet" type="text/css">
<link href="//mir9.co.kr/resource/css/jquery-ui.css" rel="stylesheet">
<!-- fullcalendar -->
<link href="//mir9.co.kr/resource/css/bootstrap-colorselector.css" rel="stylesheet">
<link href="//mir9.co.kr/resource/js/AdminLTE-2.4.2/bower_components/fullcalendar/dist/fullcalendar.min.css" rel="stylesheet" type="text/css">
<link href="//mir9.co.kr/resource/js/AdminLTE-2.4.2/bower_components/fullcalendar/dist/fullcalendar.print.css" rel="stylesheet" type="text/css" media="print">
<!-- HTML5 Shim and Respond.js IE8 support of HTML5 elements and media queries -->
<!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
<!--[if lt IE 9]>
<script src="https://oss.maxcdn.com/html5shiv/3.7.3/html5shiv.min.js"></script>
<script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
<![endif]-->
<!-- Google Font -->
<link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Source+Sans+Pro:300,400,600,700,300italic,400italic,600italic">
<style type="text/css">.jqstooltip { position: absolute;left: 0px;top: 0px;visibility: hidden;background: rgb(0, 0, 0) transparent;background-color: rgba(0,0,0,0.6);filter:progid:DXImageTransform.Microsoft.gradient(startColorstr=#99000000, endColorstr=#99000000);-ms-filter: "progid:DXImageTransform.Microsoft.gradient(startColorstr=#99000000, endColorstr=#99000000)";color: white;font: 10px arial, san serif;text-align: left;white-space: nowrap;padding: 5px;border: 1px solid white;box-sizing: content-box;z-index: 10000;}.jqsfield { color: white;font: 10px arial, san serif;text-align: left;}</style></head>

<body class="skin-red sidebar-mini" style="height: auto; min-height: 100%;">
<iframe name="iframe_process" width="0" height="0" frameborder="0" style="display:none;"></iframe>

<div class="wrapper" style="height: auto; min-height: 100%;">

<!-- content-wrapper -->
<div class="content-wrapper" style="min-height: 805px;">
<link rel="stylesheet" href="http://code.jquery.com/ui/1.10.4/themes/smoothness/jquery-ui.css">
<style>
.fc-sat { color:blue; }
.fc-sun { color:red;  }
.fc-event{ cursor: pointer;}
#calendar .fc-view.fc-week > table > tbody > tr:first-child > .fc-widget-content .fc-day-grid,
#calendar .fc-view.fc-week > table > tbody > tr:first-child > .fc-widget-content .fc-widget-header,
#calendar .fc-view.fc-agendaWeek-view > table > tbody > tr:first-child > .fc-widget-content .fc-day-grid,
#calendar .fc-view.fc-agendaWeek-view > table > tbody > tr:first-child > .fc-widget-content .fc-widget-header,
#calendar .fc-view.fc-agendaDay-view > table > tbody > tr:first-child > .fc-widget-content .fc-day-grid,
#calendar .fc-view.fc-agendaDay-view > table > tbody > tr:first-child > .fc-widget-content .fc-widget-header {display:none !important;}
</style>
</head>
<section class="content-header">
    <h1>
    일정 관리
    <small>schedule list</small>
    </h1>

    <ol class="breadcrumb">
        <li><a href="#"><i class="fa fa-dashboard"></i> Home</a></li>
        <li class="active">일정 관리</li>
    </ol>
</section>

<section class="content">
  <div class="row">
    <div class="col-md-12">
      <div class="box box-primary">
        <div class="box-body no-padding">
          <!-- THE CALENDAR -->
          <div id="calendar" class="fc fc-ltr fc-unthemed"><div class="fc-toolbar"><div class="fc-left"><div class="fc-button-group"><button type="button" class="fc-prev-button fc-button fc-state-default fc-corner-left"><span class="fc-icon fc-icon-left-single-arrow"></span></button><button type="button" class="fc-next-button fc-button fc-state-default fc-corner-right"><span class="fc-icon fc-icon-right-single-arrow"></span></button></div><button type="button" class="fc-today-button fc-button fc-state-default fc-corner-left fc-corner-right fc-state-disabled" disabled="disabled">오늘</button></div><div class="fc-right"><div class="fc-button-group"><button type="button" class="fc-month-button fc-button fc-state-default fc-corner-left fc-state-active">월간</button><button type="button" class="fc-agendaWeek-button fc-button fc-state-default">주간</button><button type="button" class="fc-agendaDay-button fc-button fc-state-default fc-corner-right">일간</button></div></div><div class="fc-center"><h2>2022년 4월</h2></div><div class="fc-clear"></div></div><div class="fc-view-container" style=""><div class="fc-view fc-month-view fc-basic-view" style=""><table><thead><tr><td class="fc-widget-header"><div class="fc-row fc-widget-header"><table><thead><tr><th class="fc-day-header fc-widget-header fc-sun">일</th><th class="fc-day-header fc-widget-header fc-mon">월</th><th class="fc-day-header fc-widget-header fc-tue">화</th><th class="fc-day-header fc-widget-header fc-wed">수</th><th class="fc-day-header fc-widget-header fc-thu">목</th><th class="fc-day-header fc-widget-header fc-fri">금</th><th class="fc-day-header fc-widget-header fc-sat">토</th></tr></thead></table></div></td></tr></thead><tbody><tr><td class="fc-widget-content"><div class="fc-day-grid-container" style=""><div class="fc-day-grid"><div class="fc-row fc-week fc-widget-content" style="height: 83px;"><div class="fc-bg"><table><tbody><tr><td class="fc-day fc-widget-content fc-sun fc-other-month fc-past" data-date="2022-03-27"></td><td class="fc-day fc-widget-content fc-mon fc-other-month fc-past" data-date="2022-03-28"></td><td class="fc-day fc-widget-content fc-tue fc-other-month fc-past" data-date="2022-03-29"></td><td class="fc-day fc-widget-content fc-wed fc-other-month fc-past" data-date="2022-03-30"></td><td class="fc-day fc-widget-content fc-thu fc-other-month fc-past" data-date="2022-03-31"></td><td class="fc-day fc-widget-content fc-fri fc-past" data-date="2022-04-01"></td><td class="fc-day fc-widget-content fc-sat fc-past" data-date="2022-04-02"></td></tr></tbody></table></div><div class="fc-content-skeleton"><table><thead><tr><td class="fc-day-number fc-sun fc-other-month fc-past" data-date="2022-03-27">27</td><td class="fc-day-number fc-mon fc-other-month fc-past" data-date="2022-03-28">28</td><td class="fc-day-number fc-tue fc-other-month fc-past" data-date="2022-03-29">29</td><td class="fc-day-number fc-wed fc-other-month fc-past" data-date="2022-03-30">30</td><td class="fc-day-number fc-thu fc-other-month fc-past" data-date="2022-03-31">31</td><td class="fc-day-number fc-fri fc-past" data-date="2022-04-01">1</td><td class="fc-day-number fc-sat fc-past" data-date="2022-04-02">2</td></tr></thead><tbody><tr><td></td><td></td><td></td><td></td><td></td><td></td><td></td></tr></tbody></table></div></div><div class="fc-row fc-week fc-widget-content" style="height: 83px;"><div class="fc-bg"><table><tbody><tr><td class="fc-day fc-widget-content fc-sun fc-today fc-state-highlight" data-date="2022-04-03"></td><td class="fc-day fc-widget-content fc-mon fc-future" data-date="2022-04-04"></td><td class="fc-day fc-widget-content fc-tue fc-future" data-date="2022-04-05"></td><td class="fc-day fc-widget-content fc-wed fc-future" data-date="2022-04-06"></td><td class="fc-day fc-widget-content fc-thu fc-future" data-date="2022-04-07"></td><td class="fc-day fc-widget-content fc-fri fc-future" data-date="2022-04-08"></td><td class="fc-day fc-widget-content fc-sat fc-future" data-date="2022-04-09"></td></tr></tbody></table></div><div class="fc-content-skeleton"><table><thead><tr><td class="fc-day-number fc-sun fc-today fc-state-highlight" data-date="2022-04-03">3</td><td class="fc-day-number fc-mon fc-future" data-date="2022-04-04">4</td><td class="fc-day-number fc-tue fc-future" data-date="2022-04-05">5</td><td class="fc-day-number fc-wed fc-future" data-date="2022-04-06">6</td><td class="fc-day-number fc-thu fc-future" data-date="2022-04-07">7</td><td class="fc-day-number fc-fri fc-future" data-date="2022-04-08">8</td><td class="fc-day-number fc-sat fc-future" data-date="2022-04-09">9</td></tr></thead><tbody><tr><td></td><td></td><td></td><td></td><td></td><td></td><td></td></tr></tbody></table></div></div><div class="fc-row fc-week fc-widget-content" style="height: 83px;"><div class="fc-bg"><table><tbody><tr><td class="fc-day fc-widget-content fc-sun fc-future" data-date="2022-04-10"></td><td class="fc-day fc-widget-content fc-mon fc-future" data-date="2022-04-11"></td><td class="fc-day fc-widget-content fc-tue fc-future" data-date="2022-04-12"></td><td class="fc-day fc-widget-content fc-wed fc-future" data-date="2022-04-13"></td><td class="fc-day fc-widget-content fc-thu fc-future" data-date="2022-04-14"></td><td class="fc-day fc-widget-content fc-fri fc-future" data-date="2022-04-15"></td><td class="fc-day fc-widget-content fc-sat fc-future" data-date="2022-04-16"></td></tr></tbody></table></div><div class="fc-content-skeleton"><table><thead><tr><td class="fc-day-number fc-sun fc-future" data-date="2022-04-10">10</td><td class="fc-day-number fc-mon fc-future" data-date="2022-04-11">11</td><td class="fc-day-number fc-tue fc-future" data-date="2022-04-12">12</td><td class="fc-day-number fc-wed fc-future" data-date="2022-04-13">13</td><td class="fc-day-number fc-thu fc-future" data-date="2022-04-14">14</td><td class="fc-day-number fc-fri fc-future" data-date="2022-04-15">15</td><td class="fc-day-number fc-sat fc-future" data-date="2022-04-16">16</td></tr></thead><tbody><tr><td></td><td></td><td></td><td></td><td></td><td></td><td></td></tr></tbody></table></div></div><div class="fc-row fc-week fc-widget-content" style="height: 83px;"><div class="fc-bg"><table><tbody><tr><td class="fc-day fc-widget-content fc-sun fc-future" data-date="2022-04-17"></td><td class="fc-day fc-widget-content fc-mon fc-future" data-date="2022-04-18"></td><td class="fc-day fc-widget-content fc-tue fc-future" data-date="2022-04-19"></td><td class="fc-day fc-widget-content fc-wed fc-future" data-date="2022-04-20"></td><td class="fc-day fc-widget-content fc-thu fc-future" data-date="2022-04-21"></td><td class="fc-day fc-widget-content fc-fri fc-future" data-date="2022-04-22"></td><td class="fc-day fc-widget-content fc-sat fc-future" data-date="2022-04-23"></td></tr></tbody></table></div><div class="fc-content-skeleton"><table><thead><tr><td class="fc-day-number fc-sun fc-future" data-date="2022-04-17">17</td><td class="fc-day-number fc-mon fc-future" data-date="2022-04-18">18</td><td class="fc-day-number fc-tue fc-future" data-date="2022-04-19">19</td><td class="fc-day-number fc-wed fc-future" data-date="2022-04-20">20</td><td class="fc-day-number fc-thu fc-future" data-date="2022-04-21">21</td><td class="fc-day-number fc-fri fc-future" data-date="2022-04-22">22</td><td class="fc-day-number fc-sat fc-future" data-date="2022-04-23">23</td></tr></thead><tbody><tr><td></td><td></td><td></td><td></td><td></td><td></td><td></td></tr></tbody></table></div></div><div class="fc-row fc-week fc-widget-content" style="height: 84px;"><div class="fc-bg"><table><tbody><tr><td class="fc-day fc-widget-content fc-sun fc-future" data-date="2022-04-24"></td><td class="fc-day fc-widget-content fc-mon fc-future" data-date="2022-04-25"></td><td class="fc-day fc-widget-content fc-tue fc-future" data-date="2022-04-26"></td><td class="fc-day fc-widget-content fc-wed fc-future" data-date="2022-04-27"></td><td class="fc-day fc-widget-content fc-thu fc-future" data-date="2022-04-28"></td><td class="fc-day fc-widget-content fc-fri fc-future" data-date="2022-04-29"></td><td class="fc-day fc-widget-content fc-sat fc-future" data-date="2022-04-30"></td></tr></tbody></table></div><div class="fc-content-skeleton"><table><thead><tr><td class="fc-day-number fc-sun fc-future" data-date="2022-04-24">24</td><td class="fc-day-number fc-mon fc-future" data-date="2022-04-25">25</td><td class="fc-day-number fc-tue fc-future" data-date="2022-04-26">26</td><td class="fc-day-number fc-wed fc-future" data-date="2022-04-27">27</td><td class="fc-day-number fc-thu fc-future" data-date="2022-04-28">28</td><td class="fc-day-number fc-fri fc-future" data-date="2022-04-29">29</td><td class="fc-day-number fc-sat fc-future" data-date="2022-04-30">30</td></tr></thead><tbody><tr><td></td><td></td><td></td><td></td><td></td><td></td><td></td></tr></tbody></table></div></div></div></div></td></tr></tbody></table></div></div></div>
        </div><!-- /.box-body -->
      </div><!-- /. box -->
    </div><!-- /.col -->
  </div><!-- /.row -->
</section>

<div class="modal fade" id="modalContent" tabindex="-2" role="dialog" aria-labelledby="myModal" aria-hidden="true">
    <div class="modal-dialog" style="width:600px;">
        <div class="modal-content">
            <form name="form_register" method="post" action="?tpf=admin/schedule/process" enctype="multipart/form-data">
            <input type="hidden" name="mode" id="mode" value="insert">
            <input type="hidden" name="type" value="nomal">
            <input type="hidden" name="code">
            <div class="modal-header">
                <button type="button" class="close" data-dismiss="modal" aria-hidden="true">×</button>
                <h4 class="modal-title" id="myModalLabelPortfolio">일정 관리</h4>
            </div>
            <div class="modal-body">

            <h4><p class="text-light-blue"><i class="fa fa-fw fa-info-circle"></i> 일정 <span id="board_sub_title">등록</span></p></h4>
            <table class="table table-bordered">
            <tbody><tr>
                <td class="menu">날짜</td>
                <td align="left">
                <span style="float:left">
                <input type="text" name="start_date" id="datepicker1" class="form-control input-sm hasDatepicker" style="width:80px; float:left" readonly="" placeholder="시작일">
                <select name="start_time" class="form-control input-sm" style="width:80px; margin-left:3px; float:left;">
      <option value="00:00">00:00</option>      <option value="00:30">00:30</option>      <option value="01:00">01:00</option>      <option value="01:30">01:30</option>      <option value="02:00">02:00</option>      <option value="02:30">02:30</option>      <option value="03:00">03:00</option>      <option value="03:30">03:30</option>      <option value="04:00">04:00</option>      <option value="04:30">04:30</option>      <option value="05:00">05:00</option>      <option value="05:30">05:30</option>      <option value="06:00">06:00</option>      <option value="06:30">06:30</option>      <option value="07:00">07:00</option>      <option value="07:30">07:30</option>      <option value="08:00">08:00</option>      <option value="08:30">08:30</option>      <option value="09:00">09:00</option>      <option value="09:30">09:30</option>      <option value="10:00">10:00</option>      <option value="10:30">10:30</option>      <option value="11:00">11:00</option>      <option value="11:30">11:30</option>      <option value="12:00">12:00</option>      <option value="12:30">12:30</option>      <option value="13:00">13:00</option>      <option value="13:30">13:30</option>      <option value="14:00">14:00</option>      <option value="14:30">14:30</option>      <option value="15:00">15:00</option>      <option value="15:30">15:30</option>      <option value="16:00">16:00</option>      <option value="16:30">16:30</option>      <option value="17:00">17:00</option>      <option value="17:30">17:30</option>      <option value="18:00">18:00</option>      <option value="18:30">18:30</option>      <option value="19:00">19:00</option>      <option value="19:30">19:30</option>      <option value="20:00">20:00</option>      <option value="20:30">20:30</option>      <option value="21:00">21:00</option>      <option value="21:30">21:30</option>      <option value="22:00">22:00</option>      <option value="22:30">22:30</option>      <option value="23:00">23:00</option>      <option value="23:30">23:30</option>				</select>
                </span>
                <span style="float:left">&nbsp;&nbsp;~&nbsp;&nbsp;</span>
                <span style="float:left">
                <input type="text" name="end_date" id="datepicker2" class="form-control input-sm hasDatepicker" style="width:80px; float:left" readonly="" placeholder="종료일">
                <select name="end_time" class="form-control input-sm" style="width:80px; margin-left:3px; float:left;">
      <option value="00:00">00:00</option>      <option value="00:30">00:30</option>      <option value="01:00">01:00</option>      <option value="01:30">01:30</option>      <option value="02:00">02:00</option>      <option value="02:30">02:30</option>      <option value="03:00">03:00</option>      <option value="03:30">03:30</option>      <option value="04:00">04:00</option>      <option value="04:30">04:30</option>      <option value="05:00">05:00</option>      <option value="05:30">05:30</option>      <option value="06:00">06:00</option>      <option value="06:30">06:30</option>      <option value="07:00">07:00</option>      <option value="07:30">07:30</option>      <option value="08:00">08:00</option>      <option value="08:30">08:30</option>      <option value="09:00">09:00</option>      <option value="09:30">09:30</option>      <option value="10:00">10:00</option>      <option value="10:30">10:30</option>      <option value="11:00">11:00</option>      <option value="11:30">11:30</option>      <option value="12:00">12:00</option>      <option value="12:30">12:30</option>      <option value="13:00">13:00</option>      <option value="13:30">13:30</option>      <option value="14:00">14:00</option>      <option value="14:30">14:30</option>      <option value="15:00">15:00</option>      <option value="15:30">15:30</option>      <option value="16:00">16:00</option>      <option value="16:30">16:30</option>      <option value="17:00">17:00</option>      <option value="17:30">17:30</option>      <option value="18:00">18:00</option>      <option value="18:30">18:30</option>      <option value="19:00">19:00</option>      <option value="19:30">19:30</option>      <option value="20:00">20:00</option>      <option value="20:30">20:30</option>      <option value="21:00">21:00</option>      <option value="21:30">21:30</option>      <option value="22:00">22:00</option>      <option value="22:30">22:30</option>      <option value="23:00">23:00</option>      <option value="23:30">23:30</option>				</select>
                </span>
                </td>
            </tr>
            <tr>
                <td class="menu">제목</td>
                <td align="left">
                <table border="0" cellspacing="0" cellpadding="0" width="100%">
                <tbody><tr>
                    <td style="width:8%; text-align:left;">
                    <select name="background_color" id="colorselector" style="display: none;">
          <option value="#A0522D" data-color="#A0522D"></option>          <option value="#CD5C5C" data-color="#CD5C5C"></option>          <option value="#FF4500" data-color="#FF4500"></option>          <option value="#008B8B" data-color="#008B8B"></option>          <option value="#B8860B" data-color="#B8860B"></option>          <option value="#32CD32" data-color="#32CD32"></option>          <option value="#FFD700" data-color="#FFD700"></option>          <option value="#00C0EF" data-color="#00C0EF"></option>          <option value="#87CEEB" data-color="#87CEEB"></option>          <option value="#FF69B4" data-color="#FF69B4"></option>          <option value="#87CEFA" data-color="#87CEFA"></option>          <option value="#6495ED" data-color="#6495ED"></option>          <option value="#DD4B39" data-color="#DD4B39"></option>          <option value="#FF8C00" data-color="#FF8C00"></option>          <option value="#C71585" data-color="#C71585"></option>          <option value="#00A65A" data-color="#00A65A"></option>          <option value="#F39C12" data-color="#F39C12"></option>          <option value="#3C8DBC" data-color="#3C8DBC"></option>          <option value="#000000" data-color="#000000"></option>                    </select><div class="dropdown dropdown-colorselector"><a data-toggle="dropdown" class="dropdown-toggle" href="#"><span class="btn-colorselector" style="background-color: rgb(160, 82, 45);"></span></a><ul class="dropdown-menu dropdown-caret"><li><a class="color-btn selected" href="#" data-color="#A0522D" data-value="#A0522D" title="" style="background-color: rgb(160, 82, 45);"></a></li><li><a class="color-btn" href="#" data-color="#CD5C5C" data-value="#CD5C5C" title="" style="background-color: rgb(205, 92, 92);"></a></li><li><a class="color-btn" href="#" data-color="#FF4500" data-value="#FF4500" title="" style="background-color: rgb(255, 69, 0);"></a></li><li><a class="color-btn" href="#" data-color="#008B8B" data-value="#008B8B" title="" style="background-color: rgb(0, 139, 139);"></a></li><li><a class="color-btn" href="#" data-color="#B8860B" data-value="#B8860B" title="" style="background-color: rgb(184, 134, 11);"></a></li><li><a class="color-btn" href="#" data-color="#32CD32" data-value="#32CD32" title="" style="background-color: rgb(50, 205, 50);"></a></li><li><a class="color-btn" href="#" data-color="#FFD700" data-value="#FFD700" title="" style="background-color: rgb(255, 215, 0);"></a></li><li><a class="color-btn" href="#" data-color="#00C0EF" data-value="#00C0EF" title="" style="background-color: rgb(0, 192, 239);"></a></li><li><a class="color-btn" href="#" data-color="#87CEEB" data-value="#87CEEB" title="" style="background-color: rgb(135, 206, 235);"></a></li><li><a class="color-btn" href="#" data-color="#FF69B4" data-value="#FF69B4" title="" style="background-color: rgb(255, 105, 180);"></a></li><li><a class="color-btn" href="#" data-color="#87CEFA" data-value="#87CEFA" title="" style="background-color: rgb(135, 206, 250);"></a></li><li><a class="color-btn" href="#" data-color="#6495ED" data-value="#6495ED" title="" style="background-color: rgb(100, 149, 237);"></a></li><li><a class="color-btn" href="#" data-color="#DD4B39" data-value="#DD4B39" title="" style="background-color: rgb(221, 75, 57);"></a></li><li><a class="color-btn" href="#" data-color="#FF8C00" data-value="#FF8C00" title="" style="background-color: rgb(255, 140, 0);"></a></li><li><a class="color-btn" href="#" data-color="#C71585" data-value="#C71585" title="" style="background-color: rgb(199, 21, 133);"></a></li><li><a class="color-btn" href="#" data-color="#00A65A" data-value="#00A65A" title="" style="background-color: rgb(0, 166, 90);"></a></li><li><a class="color-btn" href="#" data-color="#F39C12" data-value="#F39C12" title="" style="background-color: rgb(243, 156, 18);"></a></li><li><a class="color-btn" href="#" data-color="#3C8DBC" data-value="#3C8DBC" title="" style="background-color: rgb(60, 141, 188);"></a></li><li><a class="color-btn" href="#" data-color="#000000" data-value="#000000" title="" style="background-color: rgb(0, 0, 0);"></a></li></ul></div>
                    </td>
                    <td>
                    <input type="text" name="title" class="form-control input-sm" style="width:100%;">
                    </td>
                </tr>
                </tbody></table>
                </td>
            </tr>
            <tr>
                <td class="menu">내용</td>
                <td align="left"><textarea name="content" id="content" rows="5" style="width:100%"></textarea></td>
            </tr>
            </tbody></table>

            </div>
            <div class="modal-footer">
            <button type="button" onclick="register()" class="btn btn-primary">확인</button>&nbsp;&nbsp;&nbsp;
            <button type="button" onclick="deleteSchedule()" id="display_reply" style="display:none;" class="btn btn-danger">삭제</button>
            </div>
            </form>
        </div>
    </div>
</div>
</div><!-- /.content-wrapper -->

<jsp:include page="/WEB-INF/views/common/footer.jsp"></jsp:include>
<div id="ui-datepicker-div" class="ui-datepicker ui-widget ui-widget-content ui-helper-clearfix ui-corner-all"></div></body></html>