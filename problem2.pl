$value = 0;
$index = 0;
$treshold = 4_000_000;
@fib = (1, 2);

while($value < $treshold){
  $value = @fib[$index + 1] + @fib[$index];
  push @fib, $value unless $value >= $treshold;
  $index++;
}
grep{ $sum += $_ if $_ % 2 == 0} @fib;
print "$sum\n";
