$index = 10001; # The index we need to find the prime number for
$currentindex = 3;
%primes = ( 1 => 2, # The description is not zero based, so we don't do it as well
            2 => 3);
$currentprime = 3;

for($currentindex; $currentindex <= $index; $currentindex++){
  $primes{$currentindex} = next_prime();
}


print $primes{$index}, "\n";

# Gets the next prime
sub next_prime {
  $found = 0;

  do{
    $currentprime++;
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
