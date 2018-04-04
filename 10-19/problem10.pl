package problem10;
use lib "../Utils";
require Math;

my $sum = find_sum();
print_result($sum);


sub find_sum{
  my $treshold = 2_000_000; # A prime number cannot be higher than this number
  my @primes = (2, 3);
  my $currentprime = 3;

  while($currentprime < $treshold){
    my $nextprime = Math::next_prime($currentprime);
    $currentprime = $nextprime;
    push @primes, $currentprime;
  }

  my $sum;
  grep { $sum += $_} @primes;
  return $sum;
}

sub print_result {
  my $res = shift;
  print "The sum of all the primes below two million is $res.\n";
  return 1;
}
