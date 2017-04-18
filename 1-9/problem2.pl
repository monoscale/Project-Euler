package problem2;

use lib '../Utils';
require Math;

# Main
my @fib = init_data();
my $res = find_sum(\@fib);
print_result($res);

# Initializes the data
sub init_data {
  return Math::fibonacci_limit(4_000_000);
}

# Finds the sum
sub find_sum {
  my @fib = @{$_[0]};
  my $sum = 0;
  grep{
    $sum += $_ if $_ % 2 == 0
  } @fib;
  return $sum;
}

# Prints out the result
sub print_result {
  my $sum = shift;
  print "The sum of the even-valued fibonacci terms, who do not succeed 4 million is $sum\n";
  return 1;
}
