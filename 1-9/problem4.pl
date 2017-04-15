
# Main
$largest = find_max_palindrome();
print_result($largest);


# Finds the largest palindrome that can be made with two 2-digit numbers
sub find_max_palindrome {
  my $max = 1000; # Each number of the product can not go higher than this number
  my $largest; # The largest palindrome found
  for ($i = 0; $i < $max; $i++){
    for($j = 0; $j < $max; $j++){
      $calc = $i * $j;
      $largest = $calc if is_palindrome($calc) && $calc > $largest;
    }
  }

  return $largest;
}

# Determines wether a number is a palindrome
sub is_palindrome {
  $n = @_[0];
  return $n eq reverse $n;
}

sub print_result {
  $res = shift;
  print "The largest palindrome that can be made with two 2-digit numbers is $res.\n";
}
