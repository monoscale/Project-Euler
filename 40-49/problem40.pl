$current_digits = 0; # de hoeveelste digit dat we momenteel hebben
$current_num = 0;    # het huidige getal
$found = 0;          # hoeveel factoren er gevonden zijn
@factors;            # een array van alle factoren

while($found < 6){   # er wordt gebruik gemaakt van 10 ** $found
                     # initieël is $found 0, dus 10 ** 0 = 1, we zoeken de eerste digit
                     # dan is $found 1, dus 10 ** 1 = 10, we zoeken de tiende digit
                     # ...
                     # uiteindelijk is $found 5, dus 10 ** 5 = 100 000, we zoeken de honderdduizendste digit

                     # in de binneste for loop zal ZEKER ook nog digit 1 000 000 gevonden worden voor $found = 5
                     #  aangezien de totale lengte van alle getallen kleiner dan 1 000 000 groter is dan 1 000 000
                     #  hierdoor zal digit 1 000 000 zich nog ergens bevinden tussen de getallen met 5 digits
    $current_num++;
    for(split "", $current_num){ # het getal opsplitsen in de individuele digits en dan overlopen 
        $current_digits++;
        if($current_digits == 10 ** $found){ # als de positie van de huidige digit gelijk is aan een macht van 10, dus 1, 10, 100, 1000 ..., afhankelijk van $found,
                                             # dan is dit een digit dat we zoeken
            $found++;
            push @factors, $_; # de gevonden digit op de array pushen
        }
    }
}

# alle factoren vermenigvuldigen
$result = 1;
for(@factors){
    $result *= $_;
}

print join " * ", @factors;
print " = $result";