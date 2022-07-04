<?php
$a=18;
$array=array(42, 65, 69, 2, 65, 25);
$x = count($array);
for ($h=0; $h<$x; $h++){
    if (strrpos($array[$h], "2") !==false){
        $x++;
        for ($k=$x-1; $k>$h;$k--){
            $array[$k]=$array[$k-1];
        }
       $h++;
       $array[$h]=$a;
    }
    
}?>

<pre><?php 
print_r($array);?>
</pre>

