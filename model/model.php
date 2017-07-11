<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
	<title>Thegioididong.com - Siêu thị điện thoại, Tablet, Laptop, Phụ kiện chính hãng</title>
</head>

<body>
<?php
	class Model {
	
		public function __construct() {

		}
		//ket noi database
		private function connectDatabase() {
			$db_server = mysql_connect("localhost", "root");
			if (!$db_server) die("Unable to connect to MySQL: " . mysql_error() . "<br/>");
			mysql_select_db("tgdd") or die("Unable to select database: " . mysql_error() . "<br/>");
			mysql_query("SET NAMES 'UTF8'");
		}
		//lấy danh sách menu 
		public function getMenuList() {
			$this->connectDatabase();
			$result = mysql_query("SELECT * FROM menu");
			if ($result) {
				while($row = mysql_fetch_assoc($result))
					$menuList[] = $row;
				return $menuList;
			}
			else {
				echo "<p>Không thể kết nối Database</p><br/>";
				return NULL;
			}
		}
		//lấy danh sách sản phẩm 
		public function getProductList() {
			$this->connectDatabase();
			$result = mysql_query("SELECT * FROM sanpham");
			if ($result) {
				while($row = mysql_fetch_assoc($result))
					$productList[] = $row;
				return $productList;
			}
			else {
				echo "<p>Không thể kết nối Database</p><br/>";
				return NULL;
			}
		}
		//lấy danh sách tintuc 
		public function getNewsList() {
			$this->connectDatabase();
			$result = mysql_query("SELECT * FROM tintuc");
			if ($result) {
				while($row = mysql_fetch_assoc($result))
					$newsList[] = $row;
				return $newsList;
			}
			else {
				echo "<p>Không thể kết nối Database</p><br/>";
				return NULL;
			}
		}
		//lấy danh sách ho tro
		public function getsupportList() {
			$this->connectDatabase();
			$result = mysql_query("SELECT * FROM hotro");
			if ($result) {
				while($row = mysql_fetch_assoc($result))
					$newsList[] = $row;
				return $newsList;
			}
			else {
				echo "<p>Không thể kết nối Database</p><br/>";
				return NULL;
			}
		}
        	//lấy danh sách tim kiem nhieu
		public function getSeachList() {
			$this->connectDatabase();
			$result = mysql_query("SELECT * FROM timkiemnhieu");
			if ($result) {
				while($row = mysql_fetch_assoc($result))
					$newsList[] = $row;
				return $newsList;
			}
			else {
				echo "<p>Không thể kết nối Database</p><br/>";
				return NULL;
			}
		}
            //lấy danh sach thống kê
			public function getStatisticalList() {
			$this->connectDatabase();
			$result = mysql_query("SELECT * FROM thongke");
			if ($result) {
				while($row = mysql_fetch_assoc($result))
					$newsList[] = $row;
				return $newsList;
			}
			else {
				echo "<p>Không thể kết nối Database</p><br/>";
				return NULL;
			}
		}
         //lấy danh sach gioi thieu
			public function getIntroduceList() {
			$this->connectDatabase();
			$result = mysql_query("SELECT * FROM gioithieu");
			if ($result) {
				while($row = mysql_fetch_assoc($result))
					$newsList[] = $row;
				return $newsList;
			}
			else {
				echo "<p>Không thể kết nối Database</p><br/>";
				return NULL;
			}
		}
		//lấy danh sach quangcao
		public function getAdsList() {
			$this->connectDatabase();
			$result = mysql_query("SELECT * FROM quangcao");
			if ($result) {
				while($row = mysql_fetch_assoc($result))
					$newsList[] = $row;
				return $newsList;
			}
			else {
				echo "<p>Không thể kết nối Database</p><br/>";
				return NULL;
			}
		}
		//lấy danh sach dienthoai
			public function getPhoneList() {
			$this->connectDatabase();
			$result = mysql_query("SELECT * FROM sodienthoai");
			if ($result) {
				while($row = mysql_fetch_assoc($result))
					$newsList[] = $row;
				return $newsList;
			}
			else {
				echo "<p>Không thể kết nối Database</p><br/>";
				return NULL;
			}
		}
		//lấy diachi
			public function getAddressList() {
			$this->connectDatabase();
			$result = mysql_query("SELECT * FROM diachi");
			if ($result) {
				while($row = mysql_fetch_assoc($result))
					$newsList[] = $row;
				return $newsList;
			}
			else {
				echo "<p>Không thể kết nối Database</p><br/>";
				return NULL;
			}
		}
		//lấy danh sach app
			public function getAppList() {
			$this->connectDatabase();
			$result = mysql_query("SELECT * FROM ungdungtgdd");
			if ($result) {
				while($row = mysql_fetch_assoc($result))
					$newsList[] = $row;
				return $newsList;
			}
			else {
				echo "<p>Không thể kết nối Database</p><br/>";
				return NULL;
			}
		}
		//lấy danh sach thanhtoan
			public function getPayList() {
			$this->connectDatabase();
			$result = mysql_query("SELECT * FROM thanhtoan");
			if ($result) {
				while($row = mysql_fetch_assoc($result))
					$newsList[] = $row;
				return $newsList;
			}
			else {
				echo "<p>Không thể kết nối Database</p><br/>";
				return NULL;
			}
		}
		//lay danh sach slider
		public function getSliderList() {
			$this->connectDatabase();
			$result = mysql_query("SELECT * FROM slider");
			if ($result) {
				while($row = mysql_fetch_assoc($result))
					$newsList[] = $row;
				return $newsList;
			}
			else {
				echo "<p>Không thể kết nối Database</p><br/>";
				return NULL;
			}
		}
        
	}
?>
</body>
</html>
