use lib "../Utils";
require Primes;

$treshold = 2_000_000; # A prime number cannot be higher than this number
@primes = (2, 3);
$currentprime = 3;

while($currentprime < $treshold){
  $nextprime = Primes::next_prime($currentprime);
  $primes{$currentindex} = $nextprime;
  $currentprime = $nextprime;
  push @primes, $currentprime;
}

grep { $sum += $_} @primes;
print"$sum\n";
