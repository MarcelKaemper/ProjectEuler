# 2520 is the smallest number that can be divided by each of the numbers from 1 to 10 without any remainder.
# What is the smallest positive number that is evenly divisible by all of the numbers from 1 to 20?

$res = 0;
$num = 1;
$err = 0;

while($res==0){
	for($i = 1; $i<=20; $i++){
		if($num % $i != 0){
			$err = 1;
			last;
		}
	}
	if($err == 1){
		$num++;
		$err = 0;
		print("Trying $num\n");
	}else{
		print($num."\n");
		last;
	}
}

print($num);
