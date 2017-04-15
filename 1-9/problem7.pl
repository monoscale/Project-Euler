use lib "../Utils";
require Primes;

# Main
$res = find_prime();
print_result($res);

# Finds the 10 001st prime
sub find_prime {
  my $index = 10001; # The index we need to find the prime number for
  my $currentindex = 3;
  my %primes = ( 1 => 2, # The description is not zero based, so we don't do it as well
              2 => 3);
  my $currentprime = 3;

  for($currentindex; $currentindex <= $index; $currentindex++){
    $nextprime = Primes::next_prime($currentprime);
    $primes{$currentindex} = $nextprime;
    $currentprime = $nextprime;
  }

  return $primes{$index};

}

sub print_result{
  $res = shift;
  print "The 10 001st prime number is $res.\n";
}
