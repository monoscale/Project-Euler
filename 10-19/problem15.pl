use lib "../Utils";
require Math;

# No need to bruteforce, use simple combination instead.

$size = 20;

$paths = combination($size * 2, $size); # 40 squares(the grid), and chose 20(one path) of them
print "There are $paths paths for a $size x $size grid.\n";

sub combination {
  $n = shift;
  $r = shift;
  return Math::factorial($n) / (Math::factorial($r) * Math::factorial($n - $r));
}
