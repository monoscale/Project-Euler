
# Main
@fib = init_data();
$res = find_sum(\@fib);
print_result($res);

# Initializes the data
sub init_data {
  my @fib = (1, 2); # The fibonacci sequence;
  my $treshold = 4_000_000; # The fibonacci sequence cannot go higher than this number
  my $value = 0; #
  my $index = 0; #

  while($value < $treshold){
    $value = @fib[$index + 1] + @fib[$index];
    push @fib, $value unless $value >= $treshold;
    $index++;
  }

  return @fib;
}

# Finds the sum
sub find_sum {
  my @fib = @{$_[0]};
  grep{
    $sum += $_ if $_ % 2 == 0
  } @fib;
  return $sum;
}

# Prints out the result
sub print_result {
  my $sum = shift;
  print "The sum of the even-valued fibonacci terms, who do not succeed 4 million is $sum\n";
}
