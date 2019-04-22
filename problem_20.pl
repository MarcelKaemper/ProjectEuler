# n! means n × (n − 1) × ... × 3 × 2 × 1

# For example, 10! = 10 × 9 × ... × 3 × 2 × 1 = 3628800,
# 		and the sum of the digits in the number 10! is 3 + 6 + 2 + 8 + 8 + 0 + 0 = 27.

# Find the sum of the digits in the number 100!

use strict;
use bigint;

sub faculty{
	$res = 1;
	for($i = @_[0]; $i>0; $i--){
		$res *= $i;
	}
	return $res;
}

$x = faculty(100);
$sum=0;
while ($x) {
	$sum+=$x%10;
	$x/=10;
}
print $sum."\n";
