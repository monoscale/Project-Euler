
# Main
$res = calculate_difference();
print_result($res);

# Calculates the difference between the square of the sum and sum of squares
sub calculate_difference {
  my @range = 1..100; # The first 100 numbers
  my $sosq = sum_of_squares(\@range); # Sum of squares
  my $sqos = square_of_sum(\@range); # Square of the sum
  return $sqos - $sosq;
}

# Calculates the sum of the squares of the range
sub sum_of_squares {
  my @range = @{$_[0]};
  my $sosq = 0;
  $sosq += $_ * $_ for @range;
  return $sosq;
}

# Calculates the square of the som of the range
sub square_of_sum {
  my @range = @{$_[0]};
  my $temp = 0;
  my $sqos = 0;

  $temp += $_ for @range;
  $sqos = $temp * $temp;
  return $sqos;
}


sub print_result {
  $res = shift;
  print "The difference between the sum of the squares of the first one hundred natural numbers and the square of the sum is $res.\n";
}
