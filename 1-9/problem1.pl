package problem1;

# Main
my $sum = find_multiples();
print_result($sum);

# Finds the sum of all multiples of 3 and 5 below 1000
sub find_multiples {
  my $sum;
  grep{
    $sum += $_ if $_ % 3 == 0 || $_ % 5 == 0;
  } 1..999;
  return $sum;
}

sub print_result {
  my $res = shift;
  print "The sum of all multiples of 3 and 5 below 1000 are $res\n";
  return 1;
}
