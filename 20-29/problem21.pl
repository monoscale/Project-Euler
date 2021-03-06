package problem21;
use lib "../Utils";
require Math;
# Main
$res = find_sum_of_amicable_numbers();
print_result($res);


sub find_sum_of_amicable_numbers {
  my $max = 10_000;
  my $sum = 0;
  my @amicable_numbers = ();
  for(my $i = 1; $i < $max; $i++){
    my $res = Math::sum_of_proper_divisors($i);
    if(Math::sum_of_proper_divisors($res) == $i && $i != $res){
      push @amicable_numbers, $res, $i;
    }
  }

  # A hash gets rid of all the duplicate numbers
  my %amicable_no_duplicates = map { $_ => 0} @amicable_numbers;
  # Get the sum of all the keys
  grep { $sum += $_ } keys %amicable_no_duplicates;
  return $sum;

}

sub print_result {
  $res = shift;
  print "The sum of all amicable numbers under 10000 is $res.\n";
}
