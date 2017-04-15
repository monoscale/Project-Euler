# a + b + c = 1000;
# a must be smaller than b, which must be smaller than c
for ($a = 1; $a <= 500; $a++){
  for ($b = 1; $b <= 500; $b++){
    for ($c = 1; $c <= 500; $c++){
      if(($a + $b + $c) == 1000 && $a < $b && $b < $c){
        if(($a * $a + $b * $b) == ($c * $c)){
          print "a: $a, b: $b, c: $c\n";
          print "product: ", $a * $b * $c, "\n";
        }
      }
    }
  }
}
