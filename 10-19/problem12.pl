# Main
$max_divisors = shift;

$triangle_num = find_triangle_num();
print_result($triangle_num);

sub find_triangle_num {
  my $num = 0;
    for (my $i = 1; ; $i++){
      $num += $i; # Add current number to previous number
      $divisors = num_of_divisors($num);
      return $num if $divisors > $max_divisors;
    }

    sub num_of_divisors {
      my $n = shift;
      # They have itself as a divisor, but we dont want to loop to that number,
      # so we can cut the 'for loop' in half by just setting the initial value
      # to 1
      my $divisors = 1;
      for($i = 1; $i <= ($n / 2); $i++){
        if($n % $i == 0){
        }
        $divisors++ if $n % $i == 0;
      }
      print "$n => $divisors\n";
      return $divisors;
    }
}



sub print_result {
  $res = shift;
  print "The value of the first triangle number to have over $max_divisors divisors is $res.\n";
}
