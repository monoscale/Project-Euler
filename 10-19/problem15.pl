# No need to bruteforce, use simple combination instead.

$size = 20;

$paths = combination($size * 2, $size);
print "There are $paths paths for a $size x $size grid.\n";

sub combination {
  $n = shift;
  $r = shift;
  return factorial($n) / (factorial($r) * factorial($n - $r));
}

sub factorial {
  my $num = shift;

  if($num == 0 || $num == 1){
    return 1;
  }

  $result = factorial($num - 1) * $num;
  return $result;
}
