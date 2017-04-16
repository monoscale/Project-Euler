
init_data();
$res = find_count_letters();
print_result($res);

sub init_data {
  @ones = qw(one two three four five six seven eight nine);
  @tenths = qw(ten eleven twelve thirteen fourteen fifteen sixteen seventeen eighteen nineteen);
  @tenths2 = qw(twenty thirty forty fifty sixty seventy eighty ninety);
  $hundred = "hundred";
  $thousand = "thousand";
}

sub find_count_letters {
  my @range = 1..250;

  for $i (@range){
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
    print "$i -> $written\n";
  }

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
    my $tenth = (($n - $one) / 10) % 10;
    my $hundredth = substr($n, 0, 1);

    my $onewritten;
    my $tenthwritten;
    my $hundredthwritten;
    if($tenth == 1){
      $tenthwritten = @tenths[$tenth];
    } else{
      $onewritten = @ones[$one - 1];
      $tenthwritten = @tenths2[$tenth - 2];
    }
    $hundredthwritten = "@ones[$hundredth - 1] $hundred and";

    return "$hundredthwritten $tenthwritten $onewritten";
  }
}

sub print_result {
  my $res = shift;
  print "The numbers 1 to 1000 written out give $res letters.\n";
}
