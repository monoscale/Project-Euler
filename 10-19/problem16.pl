package problem16;
use lib "../Utils";
use bigint;
require Math;


my $pow = 1000; # The exponent
my $number = 2 ** $pow;


my $sod = Math::sum_of_digits($number);

print "The sum of its digits is $sod\n";
