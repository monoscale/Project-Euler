package problem17;

my @ones = qw(one two three four five six seven eight nine);
my @tenths = qw(ten eleven twelve thirteen fourteen fifteen sixteen seventeen eighteen nineteen);
my @tenths2 = qw(twenty thirty forty fifty sixty seventy eighty ninety);
my $hundred = "hundred";
my $thousand = "thousand";
my $res = find_count_letters();
print_result($res);



sub find_count_letters {
  my @range = 1..1000;
  my $total = 0;
  my $written;
  for my $i (@range){
    if($i =~ /^\d{1}$/){
      $written = single_digit($i);
    }

    if($i =~ /^\d{2}$/ && $i < 20){
      $written = two_digits_special($i);
    }

    if($i =~ /^\d{2}$/ && $i >= 20){
      $written = two_digits($i);
    }

    if($i =~ /^\d{3}$/){
      $written = three_digits($i);
    }
    if($i =~ /^\d{4}$/){
      $written = "one$thousand";
    }
    $total += length $written;
  }
  return $total;

  sub single_digit {
    my $n = shift;
    return @ones[$n - 1];
  }

  sub two_digits_special {
    my $n = shift;
    return @tenths[$n % 10];
  }

  sub two_digits {
    my $n = shift;
    my $one = $n % 10;
    my $tenth = ($n - $one) / 10;
    my $onewritten = single_digit($one) if $one != 0;
    my $tenthwritten = @tenths2[$tenth - 2];
    return "$tenthwritten$onewritten";
  }

  sub three_digits {
    my $n = shift;
    my $one = $n % 10;
    my $tenth = ($n) % 100;
    my $hundredth = substr($n, 0 , 1);
    my $tenthwritten;
    if($tenth >= 20){
      $tenthwritten = "and".two_digits($tenth);
    }elsif ($tenth >= 10){
      $tenthwritten = "and".two_digits_special($tenth);
    }else {
      $tenthwritten = "and".single_digit($one) if $one != 0;
    }
    my $hundredthwritten = single_digit($hundredth) . "hundred";



    return "$hundredthwritten$tenthwritten";

  }
}

sub print_result {
  my $res = shift;
  print "The numbers 1 to 1000 written out give $res letters.\n";
}
