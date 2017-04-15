use lib "../Utils";
require Primes;

# Main

$case = 600_851_475_143; # Find largest prime factor for this number
@primes = (); # Contains all the primes lower than $case
@primes_correct = (); # Contains all the prime factors for $case
$largest = 0; # The largest prime factor for $case

fill_primes();
find_largest();
print_result($largest);

# Finds the largest prime factor for a number
sub find_largest {
  for $prime (@primes){
    $result = $case / $prime;
    push (@primes_correct, $prime) if $result =~ /^\d+$/;
  }
  $largest = @primes_correct[-1];
}

# Fills the list of primes
sub fill_primes {
  $j = 2;
  while($j * $j <= $case){
    push @primes, Primes::next_prime($j);
    $j++;
  }
}

sub print_result {
  my $res = shift;
  print "The largest prime factor for $case is $res.\n";
}
