# Problem 6
#
# The sum of the squares of the first ten natural numbers is,
# 12 + 22 + ... + 102 = 385
#
# The square of the sum of the first ten natural numbers is,
# (1 + 2 + ... + 10)2 = 552 = 3025
#
# Hence the difference between the sum of the squares of the first ten natural numbers and the square of the sum is 3025 − 385 = 2640.

# Find the difference between the sum of the squares of the first one hundred natural numbers and the square of the sum.


sub sumSquare{
	$res = 0;
	for($i = 1; $i<=$_[0]; $i++){
		$res+=$i**2;
	}
	return $res;
}

sub squareSum{
	$res = 0;
	for($i = 1; $i<=$_[0]; $i++){
		$res+=$i;
	}
	return $res**2;
}

print(squareSum(100)-sumSquare(100)."\n");
