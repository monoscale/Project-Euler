use lib "../Utils";
use bigint;
require Math;

# Main

$res =find_sum_of_digits();
print_result($res);

sub find_sum_of_digits {
  $factorial = Math::factorial(100);
  $sum = Math::sum_of_digits($factorial);
  return $sum;
}

sub print_result {
  $res = shift;
  print "The sum of the digits in the number 100! is $res.\n";
}
