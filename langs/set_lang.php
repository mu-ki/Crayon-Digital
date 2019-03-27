<?php
switch ($_SESSION['language']) {
case 'English':
	include_once $path."langs/english.php";
	break;
case 'தமிழ்':
	include_once $path."langs/tamil.php";
	break;
default:
	$_SESSION['language'] = "English";
	include_once $path."langs/english.php";
	break;
}
?>