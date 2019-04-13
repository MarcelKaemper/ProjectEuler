use POSIX "fmod";

#The prime factors of 13195 are 5, 7, 13 and 29.
#What is the largest prime factor of the number 600851475143 ?

sub isPrime{
	$status = 1;
	for($i = 2; $i<$_[0]; $i++){
		if(fmod($_[0]/$i, 1) == 0){
			$status = 0;
			last;
		}
	}
	return $status;
}

$num = 600851475143;
$num2 = 600851475142;

while(1){
	if(fmod($num/$num2,1) ==  0){
		print("$num2");
		if(isPrime($num2)){
			print("\n\n\n\nResult: $num2");	
			last;
		}
	}
	$num2--;
}

print time - $^T;
