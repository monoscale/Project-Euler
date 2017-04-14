@range = 1..20; # The divisors we have to use
$found = 0; # Wether or not a number is found;
$number = @range[-1]; # The current number, starting from the last number of @range



while(!$found){

  for $d (@range){
    # Check if there is any divisor that has a remainder
    if(($number % $d) != 0){
       # If so we skip this for loop and we go to the next number
      last;
    }

    # This will only be reached when every if test had no remainder
    if($d == @range[-1]){
      # Thus we have found the answer
      $found = 1;
    }
  }

  last if $found;

  $number++;
}


print "$number\n";
