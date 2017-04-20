package problem24;

my $permutation_count = 0;
permute("","0123456789");

sub permute {
  my $prefix = shift;
  my $s = shift;
  my $n = length $s;
  if($n == 0){
    $permutation_count++;
    print_result($prefix) if $permutation_count == 1_000_000;
  }else{
    for(my $i = 0; $i < $n; $i++){
      permute($prefix . substr($s, $i, 1), substr($s, 0, $i) . substr($s, $i+1, $n));
    }
  }
}


sub print_result {
  my $res = shift;
  print "The millionth lexographic permutation is $res.\n";
  return 1;
}
