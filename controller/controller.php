<?php include_once("model/model.php"); ?>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
	<title>controller.php</title>
</head>

<body>
<?php
	class Controller {
		
		private $model;
		
		public function __construct() {
			$this->model = new Model();
		}
		
		public function invoke() {
			$adsList = $this->model->getAdsList();
			$productList = $this->model->getProductList();
			$newsList = $this->model->getNewsList();
			$menuList = $this->model->getMenuList();
			$supportList = $this->model->getSupportList();
          	  	$seachList = $this->model->getSeachList();
            		$statisticalList = $this->model->getStatisticalList();
            		$introduceList = $this->model->getIntroduceList();
			$phoneList = $this->model->getPhoneList();
			$addressList = $this->model->getAddressList();
			$appList = $this->model->getAppList();
			$payList = $this->model->getPayList();
			$sliderList = $this->model->getSliderList();
			include 'view/index.php';
		}
		
	}
?>
</body>
</html>
