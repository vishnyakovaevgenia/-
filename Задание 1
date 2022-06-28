$a = 1;
$arr = array(22, 45, 22, 34, 234, 234, 657, 2, 22, 0, 2);

$len = count($arr);
for ($i = 0; $i < $len; $i++){
    if (strrpos($arr[$i], "2") !== false) {
        $len++;
        for ($j = $len - 1; $j > $i; $j--){
                $arr[$j] = $arr[$j-1];
        }        
        $i++;
        $arr[$i] = $a;
    }
}

print_r($arr);
