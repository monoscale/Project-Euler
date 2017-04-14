$case = 600_851_475_143; # Find largest prime factor for this number
@primes = (); # Contains all the primes lower than $case
@primes_correct = (); # Contains all the prime factors for $case
$largest = 0; # The largest prime factor for $case

fill_primes();
find_largest();

print "$largest\n";

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
    if(is_prime($j) == 1){
      push @primes, $j;
    }
    $j++;
  }
}

# Determines wether a number is prime
sub is_prime {
  $n = @_[0];
  return 1 if $n == 2;
  return 1 if $n == 3;
  return 0 if $n % 2 == 0;
  return 0 if $n % 3 == 0;

  $i = 5;
  $w = 2;

  while ($i * $i <= $n){
    if ($n % $i == 0){
      return 0;
    }
    $i += $w;
    $w = 6 - $w;
  }
  return 1;
}
