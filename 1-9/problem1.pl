grep{ $sum += $_ if $_ % 3 == 0 || $_ % 5 == 0 } 1..999;
print "$sum\n";
