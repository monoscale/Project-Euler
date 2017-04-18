package problem3;

use lib "../Utils";
require Primes;

# Main

my $case = 600_851_475_143; # Find largest prime factor for this number

my @primes = fill_primes();
my $largest = find_largest(\@primes);
print_result($largest);

# Fills the list of primes
sub fill_primes {
  my @primes;
  my $i = 2;
  while($i * $i <= $case){
    push @primes, Primes::next_prime($i);
    $i++;
  }
  return @primes;
}

# Finds the largest prime factor for a number
sub find_largest {
  my @primes = @{$_[0]};
  my @primes_correct;
  for my $prime (@primes){
    my $result = $case / $prime;
    push (@primes_correct, $prime) if $result =~ /^\d+$/;
  }
  return $primes_correct[-1];
}

sub print_result {
  my $res = shift;
  print "The largest prime factor for $case is $res.\n";
  return 1;
}
