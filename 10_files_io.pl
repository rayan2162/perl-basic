use v5;

open(my $in,  "<",  "input.txt")  or die "Can't open input.txt: $!";
my $line  = <$in>;
print "$line";

open(my $out, ">",  "output.txt") or die "Can't open output.txt: $!";
my $line  = <$in>;
print "$line";

open(my $log, ">>", "my.log")     or die "Can't open my.log: $!";
my $line  = <$in>;
print "$line";


