# Main
grep{
  $sum += $_ if $_ % 3 == 0 || $_ % 5 == 0;
} 1..999;

print "The sum of all multiples of 3 and 5 below 1000 are $sum\n";
