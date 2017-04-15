$max = 1000; # Each number of the product can not go higher than this number
$largest = 0; #The largest palindrome that can be made with two 2-digit numbers.

for ($i = 0; $i < $max; $i++){
  for($j = 0; $j < $max; $j++){
    $calc = $i * $j;
    print "$calc\n";
    $largest = $calc if is_palindrome($calc) && $calc > $largest;
  }
}

print "$largest\n";

sub is_palindrome {
  $n = @_[0];
  return $n eq reverse $n;
}
