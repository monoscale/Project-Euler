package problem4;

# Main
my $largest = find_max_palindrome();
print_result($largest);

# Finds the largest palindrome that can be made with two 2-digit numbers
sub find_max_palindrome {
  my $max = 1000; # Each number of the product can not go higher than this number
  my $largest = 0; # The largest palindrome found
  for (my $i = 0; $i < $max; $i++){
    for(my $j = 0; $j < $max; $j++){
      my $calc = $i * $j;
      $largest = $calc if is_palindrome($calc) && $calc > $largest;
    }
  }
  return $largest;
}

# Determines wether a number is a palindrome
sub is_palindrome {
  my $n = $_[0];
  return $n eq reverse $n;
}

sub print_result {
  my $res = shift;
  print "The largest palindrome that can be made with two 2-digit numbers is $res.\n";
  return 1;
}
