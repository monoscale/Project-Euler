use lib "../Utils";
use bigint;
require Math;


$pow = 1000; # The exponent
$number = 2 ** $pow;


$sod = Math::sum_of_digits($number);

print "The sum of its digits is $sod\n";
