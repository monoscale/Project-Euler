package problem14;

my $res = find_starting_number();
print_result($res);


sub find_starting_number {
  my $start = 13; # The starting number of the chain;
  my $max = 0; # The max terms found in a chain
  my $treshold = 1_000_000; # The chain cannot start at a number higher than this
  my $starting = 0;
  for(my $i = 1; $i < $treshold; $i++){
    my $result = collatz_sequence($i);

    if($result > $max){
      $max = $result;
      $starting = $i;
    }
  }
  return $starting;

  sub collatz_sequence {
    my $num = $_[0];
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
}



sub print_result {
  my $res = shift;
  print "The starting number is $res.\n";
  return 1;
}
