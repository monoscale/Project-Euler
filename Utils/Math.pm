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


1;
