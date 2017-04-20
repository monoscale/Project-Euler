# General purpose package for math operations

package Math;

# Returns the factorial of a given number
sub factorial {
  my $n = shift;

  if($n == 0 || $n == 1){
    return 1;
  }

  $result = factorial($n - 1) * $n;
  return $result;
}

# Returns the sum of the digits of a given number
sub sum_of_digits {
  my $n = shift;

  my $sod = 0;
  while($n > 0){
    $sod += int($n % 10);
    $n /= 10;
  }
  return $sod;
}

sub sum_of_proper_divisors {
  my $n = shift;
  my $sum = 0;
  for(my $i = 1; $i <= ($n / 2); $i++){
    $sum += $i if $n % $i == 0;
  }
  return $sum;
}

# Returns an array of the fibonacci sequence with the specified amount of terms
sub fibonacci_terms {
  my $terms = shift;
  my @fib = (1, 1);
  for(my $i = 2; $i < $terms; $i++){
    push @fib, @fib[$i - 1] + @fib[$i - 2];
  }
  return @fib;
}

# Returns an array of the fibonacci sequence where the last term cannot exceed
# a given limit
sub fibonacci_limit {
  my $limit = shift;
  my @fib = (1, 1);
  my $value = @fib[-1];
  my $i = 2;
  while($value < $limit){;
    my $newvalue = @fib[$i - 1] + @fib[$i - 2];
    last if $newvalue > $limit;
    push @fib, $newvalue;
    $value = @fib[-1];
    $i++;
  }
  return @fib;
}
# Returns an array of the fibonacci sequence where the last term is the first
# number with the specified amount of digits
sub fibonacci_digits {
  my $digits = shift;
  my @fib = (1, 1);
  my $i = 2;
  while(){
    my $newvalue = @fib[$i - 1] + @fib[$i - 2];
    push @fib, $newvalue;
    last if $digits == length $newvalue;
    $i++;
  }
  return @fib;
}

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
