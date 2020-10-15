<!doctype html>
<html lang="en">
  <head>
    <meta name="viewport" content="initial-scale=1.0, user-scalable=no"/>
    <meta http-equiv="content-type" content="text/html; charset=UTF-8"/>
	<title>Google Map</title>
	<link rel="shortcut icon" href="./meters_assets/favicon.ico">

			<!-- sample_mapkeys -->
	<!-- 
	AIzaSyAi0oVNVO-e603aUY8SILdD4v9bVBkmiTg
	AIzaSyA1uIgJLlFocMlwcu8b3wKPKkdT2mWV3AU
	AIzaSyDaOAxUBewrgTiN0F-gvV7dEkgIya1kf9o
	AIzaSyDWWlvK9yjTPVmj8L46njmv_r_RQ2k_r60
	AIzaSyBylJPmC3W8b67nsiwN5gJP7Kkm2zwRrA4
	AIzaSyBtI68900mLyAs9Hp0GwEep7R5cDde18nc
	AIzaSyAOqYYyBbtXQEtcHG7hwAwyCPQSYidG8yU
	AIzaSyDqmF1kw4GLZbDGg3PxtVS9eTXlKF90kBY
	AIzaSyCoKUnDLxDZuwvgzC7tEVAYM3nDsLgoBU8
	AIzaSyACtSkuMx4FXRoRZAMqejD9s9IboOPsVBw
	AIzaSyC782k-SFBeK0nx99t6l3eMOiK-cQD8DRI
	AIzaSyCt-pyMVQdl8c680b7gq3xbZRlQ2pVgpbA 
										-->
										
	<!-- <script src="https://maps.googleapis.com/maps/api/js?key=AIzaSyDYeOFHzed6hIPjqlCyzxuwtWhbklCZISM&callback=initMap"></script> -->
	<script src="https://maps.googleapis.com/maps/api/js?key=AIzaSyD5WKfiRX86miOzclkSTCDHWSsS6BSsE24&&librariescallback=initMap"></script>	
	<script src="https://cdnjs.cloudflare.com/ajax/libs/html2canvas/0.4.1/html2canvas.min.js"></script>
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
	<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
	<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
	<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>

	<link rel="stylesheet" href="./meters_assets/tingle-master/tingle.css">
	<script src="./meters_assets/tingle-master/tingle.js"></script>
	<link rel="stylesheet" href="./meters_assets/css/style.css">
	<style>
		.scrollbar{
			float: left;
			height: 84vh;
			width: 100%;
			background: #f1f1f1;
			overflow-y: scroll;
			scrollbar-width: thin;
			border-top: 1vh #4CAF50 solid;
		}
		.scrollbar::-webkit-scrollbar {background-color:#fff;height:1px;width:7px}
		.scrollbar::-webkit-scrollbar-track {background-color:#fff}
		.scrollbar::-webkit-scrollbar-thumb {background-color:#babac0;}
		.showlist{
			word-break: break-all;
		}
		.showlist .size1{
			font-size: 13px;
		}
		.showlist .size2{
			font-size: 12px;
		}
	</style>
  </head>
  <body id="root">	

	<div class="wrapper d-flex align-items-stretch">
		<!-- Left fane -->
		<nav id="sidebar">
			<!-- Searchbar -->
			<div class="searchdiv">
				<input class="form-control" id="searchdata" value="" onchange="selectlistdata()" placeholder="Search list...">
			</div>
			<!-- List Name & Address -->
			<div class="container_s">
				<div class="vertical-center_s">
					<p id="cop_name"></p>
					<p id="cop_address"></p>
				</div>
			</div>
			<!-- Download_Png important-->
			<a id="canvasimg" href="" download=""></a>
			<!-- List -->
			<div class="scrollbar" id="showdata">

			</div>
		</nav>
		<!-- Map -->
		<div id="content" class="p-4 p-md-5 pt-5">

		</div>
	</div>

	<script src="./meters_assets/js/main.js"></script>
    <script src="./meters_assets/js/popper.js"></script>
    <script src="./meters_assets/js/bootstrap.min.js"></script>
  </body>
</html>