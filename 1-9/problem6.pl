@range = 1..100; # The first x numbers
$sosq = 0; # Sum of squares
$sqos = 0; # Square of the sum

sum_of_squares();
square_of_sum();

$result = $sqos - $sosq;
print "$result\n";

sub sum_of_squares {
  $sosq += $_ * $_ for @range;
}

sub square_of_sum {
  $temp += $_ for @range;
  $sqos = $temp * $temp;
}
