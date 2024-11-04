use v5;

my @array = (1,2,3);

foreach(@array){
    print $_ , "\n";
}

my %fruits = ("banana", "yellow", "mango", "red");

foreach(keys %fruits){
    print $_, "\n";
}

foreach(values %fruits){
    print $_, "\n";
}