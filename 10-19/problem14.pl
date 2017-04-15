$start = 13; # The starting number of the chain;
$max = 0; # The max terms found in a chain
$treshold = 1_000_000; # The chain cannot start at a number higher than this


for($i = 1; $i < $treshold; $i++){
  my $result = collatz_sequence($i);

  if($result > $max){
    $max = $result;
    print "Starting at $i generates a chain of $result\n";
  }
}

sub collatz_sequence {
  my $num = @_[0];
  my $length = 1;
  while($num != 1){
    if($num % 2 == 0){
      $num /= 2;
    }else {
      $num = (3 * $num) + 1;
    }
    $length++;
  }
  return $length;
}
