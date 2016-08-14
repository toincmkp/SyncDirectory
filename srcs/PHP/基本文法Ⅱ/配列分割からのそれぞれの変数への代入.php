<?php

// ---------------------------------------------
// 配列分割からのそれぞれの変数への代入

$mes = "aaa@bbb@ccc";

list($str1, $str2, $str3) = explode("@", $mes);
echo $str1 . "<br>";
echo $str2 . "<br>";
echo $str3 . "<br>";


?>
