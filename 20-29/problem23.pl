package problem23;
use lib "../Utils";
require Math;

my $sum = find_sum();
print_result($sum);

sub find_sum {
  my $sum = 0;
  my %abundant_numbers = ();
  my $limit = 28123;
  for (my $ i = 12; $i <= $limit; $i++){
    if(Math::sum_of_proper_divisors($i) > $i){
      #Abundant number
      $abundant_numbers{$i} = $i;
    }
  }

  my %valid_numbers = ();
  for my $i (keys %abundant_numbers){
    for my $j (keys %abundant_numbers){
      if($i + $j <= limit){
        $valid_numbers{$i + $j} = 1;
      }else{
        last;
      }
    }
  }

  while(($number, $isvalid) = each %valid_numbers){
    if($isvalid){
      $sum += $number;
    }
  }

  return $sum;
}

sub print_result {
  my $res = shift;
  print "The sum of all the positive integers which cannot be written as the sum of two abundant numbers is $res.\n";
  return 1;
}
