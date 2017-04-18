package problem9;


my $product = find_pythagorean_triplet();
print_result($product);

sub find_pythagorean_triplet {
  my $result = 0;
  for (my $a = 1; $a <= 500; $a++){
    for (my $b = 1; $b <= 500; $b++){
      for (my $c = 1; $c <= 500; $c++){
        if(($a + $b + $c) == 1000 && $a < $b && $b < $c){
          if(($a * $a + $b * $b) == ($c * $c)){
            $result = $a * $b * $c;
          }
        }
        last if $result > 0;
      }
      last if $result > 0;
    }
    last if $result > 0;
  }
  return $result;
}

sub print_result {
  my  $res = shift;
  print "The product of the pythagorean triplet is $res.\n";
  return 1;
}
