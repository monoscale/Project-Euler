$treshold = 2_000_000; # A prime number cannot be higher than this number
@primes = (2, 3);
$currentprime = 3;

while($currentprime < $treshold){
  push @primes, next_prime();
}

grep { $sum += $_} @primes;
print"$sum\n";

# Gets the next prime
sub next_prime {
  $found = 0;

  do{
    $currentprime++;
    last if $currentprime > $treshold;
    if(is_prime($currentprime)){
      $found = 1;
    }
  }while(!$found);
  return $currentprime;
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
