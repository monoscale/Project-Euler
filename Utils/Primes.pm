package Primes;


# Gets the next prime in sequence according to the given argument.
sub next_prime {
  my $currentprime = shift;
  while(){
    $currentprime++;
    return $currentprime if is_prime($currentprime);
  }
}

# Determines wheter a number is prime
sub is_prime {
  $n = shift;
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


1;
