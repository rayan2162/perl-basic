use v5;

my @animals = ("cat", "dog", "mouse");

my @sorted = sort @animals;
my @reversed_sorted = reverse @animals;

print $sorted[0], "\n";
print $sorted[1], "\n";
print $sorted[2], "\n";

print $reversed_sorted[0], "\n";
print $reversed_sorted[1], "\n";
print $reversed_sorted[2], "\n";