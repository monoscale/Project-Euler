package problem15;
use lib "../Utils";
require Math;

# No need to bruteforce, use simple combination instead.

my $size = 20;
my $paths = combination($size * 2, $size); # 40 squares(the grid), and chose 20(one path) of them
print_result($paths);


sub combination {
  my $n = shift;
  my $r = shift;
  return Math::factorial($n) / (Math::factorial($r) * Math::factorial($n - $r));
}

sub print_result {
  my $res = shift;
  print "There are $paths paths for a $size x $size grid.\n";
  return 1;
}
