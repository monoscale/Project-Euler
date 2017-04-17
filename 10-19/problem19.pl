
init_data();
my $sundays = find_sundays();
print_result($sundays);

sub init_data {
  @days = qw(monday tuesday wednesday thursday friday saturday sunday);
  %months = ( "1" => 31,
              "2" => 30,
              "3" => 31,
              "4" => 30,
              "5" => 31,
              "6" => 30,
              "7" => 31,
              "8" => 31,
              "9" => 30,
              "10" => 31,
              "11" => 30,
              "12" => 31);
}

sub find_sundays {
  my $sundays = 0;
  my %time = ();
  my $dayindex = 0;
  my $currentmonth = 1;
  my $currentyear = 1901;
  my $done = 0;
  # Make sure %time only has the corresponding days for the first of the month
  # No need to keep other dates
  while(!$done){
    my $daysinmonth;

    # Leap years
    if($currentmonth == 2){
      if($currentyear == 2000 || $currentyear / 4 == 0){
        $daysinmonth = 29;
      }else{
        $daysinmonth = 28;
      }
    }else{
      $daysinmonth = $months{$currentmonth}
    }

    # Loop for each day in a month
    for(my $currentday = 1; $currentday <= $daysinmonth; $currentday++){
      $time{"$currentyear-$currentmonth-$currentday"} = @days[$dayindex] if $currentday == 1;
      if($dayindex < 6){
        $dayindex++;
      }else{
        $dayindex = 0;
      }
    }
    if($currentmonth == 12){
      $currentyear++;
      $currentmonth = 0;
    }
    $currentmonth++;

    $done = 1 if $currentyear == 2001;

  }
  count_sundays();
  return $sundays;

  sub count_sundays {
    while((my $date, my $day) = each %time){
      $sundays++ if $day eq $days[-1];
    }
  }
}

sub print_result {
  my $res = shift;
  print "There have been $res Sundays that fell on the first of the month.\n";
}
