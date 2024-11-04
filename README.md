# Perl Guide

`perl -help` for available commands.

`perldoc perl` for more help.

`perldoc perlintro` for begineer guide.

## 1. For first hello world program

in `hello_world.pl` file

```perl
use strict;
use warnings;
use v5.35;

print "hello, world!";
```

- `use strict;` catches potential problem and stops code when this problem encounters.
- `use warnings;` will only provide warning.
- If `use v5.35;` is in the code the **strict** and **warnings** will be added automatically. This also enables **feature bundle** it will add new features while removing old features.

to run this

```shell
perl hello_world.pl
```

## 2. Comment and Whitespace

```perl
# This is a comment
```

- In perl whitespace doesn't matter

```perl
print
    "hello, world"
    ;
```

## 3. Printing numbers

```perl
print 37;
```

## 4. Newline

```perl
use v5;

print "hello, world \n";
print "jello, world \n";
```

## 5. Variable

Perl has 3 types of variable:

1. scalars
2. arrays
3. hashes

### 5.1 Scalars

> scalars represents a single value

- Scalar values can be **strings**, **integers** or **floating point**.
- Perl automatically converts them as required.

- While using a variable for first time **my** keyword is added. This makes the variable a **local** variable. Not using **my** will create a global variable.

```perl
use v5;

my $animal = "cat";
my $name = "rayan";
my $age = 24;
my $pi = 3.1416;

print $animal ,"\n";
print "my name is $name \n";
print "my age is $age \n";
print 'the result of $pi squared is : ', $pi*$pi;
```

- Modifying / overwriting a variable.

```perl
use v5;

my $num = 37;

$num = 13;

$num = $num + 7;

print $num;
```

### 5.2 Array

> list of values

- Array initialization

```perl
use v5;

my @animals = ("cat", "mouse", "dog");
my @mixed = ("cat", 24, 3.1416);

print $animals[0], "\n";
print $animals[1], "\n";
print $animals[2], "\n";

print $mixed[0], "\n";
print $mixed[1], "\n";
print $mixed[2], "\n";
```

- Last element and last position of element in an array.

```perl
use v5;

my @animals = ("cat", "dog", "mouse");

print "last index of array is ", $#animals, "\n";

print "Total elements of array is ", $#animals+1, "\n";

print "last element of array is ", $animals[$#animals];
```

- Array slice (**NOT WORKING THROWING ERROR**)

```perl
use v5;

my @animals2 = ("cat", "dog", "mouse");

@animals2[0,1];

print $animals2;
```

- Sorting array

```perl
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
```

### 5.3 Hash

> A hash represents a set of key/value pairs

- There are two methods for initialiazation.

```perl
use v5;

# method 1

my %fruits = ("banana", "yellow", "mango", "red");

print $fruits{"banana"}, "\n";

# method 2

my %colors = (
    orange => "orange",
    green => "lemon",
);

print $colors{"green"};
```

## 6. References

> More complex data types can be constructed using references.
> A reference is a scalar value and can refer to any other Perl data type.

```perl
use v5;

 my $variables = {
     scalar  =>  {
                  description => "single item",
                  sign => '$',
                 },
     array   =>  {
                  description => "ordered list of items",
                  sign => '@',
                 },
     hash    =>  {
                  description => "key/value pairs",
                  sign => '%',
                 },
 };
 print "Scalars is a $variables->{'scalar'}->{'description'}\n";
 print "Scalars begin with a $variables->{'scalar'}->{'sign'}\n";
```

## 7. Conditional Statement

```perl
use v5;

my $num = 13;

if($num>0){
    print "Positive number";
}elsif ($num==0){
    print "Zero";
}else{
    print "negetive number";
}
```

## 8. Loop

### 8.1 While loop

```perl
use v5;

$i = 0;

while($i<5){
    print "hello, world! \n";
    $i++;
}
```

### 8.2 For loop

```perl
use v5;

for($i=0; $i<5; $i++){
  print "hello, world! \n";
}
```

### 8.3 Foreach loop

```perl
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
```

## 9. Operators

```text
    Arithmetic
         +   addition
         -   subtraction
         *   multiplication
         /   division

    Numeric comparison
         ==  equality
         !=  inequality
         <   less than
         >   greater than
         <=  less than or equal
         >=  greater than or equal

    String comparison
         eq  equality
         ne  inequality
         lt  less than
         gt  greater than
         le  less than or equal
         ge  greater than or equal

    Boolean logic
         &&  and
         ||  or
         !   not

    Miscellaneous
         =   assignment
         .   string concatenation
         x   repeats strings
         ..  range operator (creates a list of numbers or strings)

    Many operators can be combined
         $a += 1;        # $a = $a + 1
         $a -= 1;        # $a = $a - 1
         $a .= "\n";     # $a = $a . "\n";
```

## 10. Files and I/O

```perl
open(my $in,  "<",  "input.txt")  or die "Can't open input.txt: $!";
my $line  = <$in>;
print "$line";

open(my $out, ">",  "output.txt") or die "Can't open output.txt: $!";
my $line  = <$in>;
print "$line";

open(my $log, ">>", "my.log")     or die "Can't open my.log: $!";
my $line  = <$in>;
print "$line";
```

## 11.   Regular expressions

Perl's regular expression support is both broad and deep, and is the
subject of lengthy documentation in perlrequick, perlretut, andelsewhere. However, in short:

    Simple matching
         if (/foo/)       { ... }  # true if $_ contains "foo"
         if ($a =~ /foo/) { ... }  # true if $a contains "foo"

        The "//" matching operator is documented in perlop. It operates on
        $_ by default, or can be bound to another variable using the "=~"
        binding operator (also documented in perlop).

    Simple substitution
         s/foo/bar/;               # replaces foo with bar in $_
         $a =~ s/foo/bar/;         # replaces foo with bar in $a
         $a =~ s/foo/bar/g;        # replaces ALL INSTANCES of foo with bar
                                   # in $a

        The "s///" substitution operator is documented in perlop.

    More complex regular expressions
        You don't just have to match on fixed strings. In fact, you can
        match on just about anything you could dream of by using more
        complex regular expressions. These are documented at great length in
        perlre, but for the meantime, here's a quick cheat sheet:

         .                   a single character
         \s                  a whitespace character (space, tab, newline,
                             ...)
         \S                  non-whitespace character
         \d                  a digit (0-9)
         \D                  a non-digit
         \w                  a word character (a-z, A-Z, 0-9, _)
         \W                  a non-word character
         [aeiou]             matches a single character in the given set
         [^aeiou]            matches a single character outside the given
                             set
         (foo|bar|baz)       matches any of the alternatives specified

         ^                   start of string
         $                   end of string

        Quantifiers can be used to specify how many of the previous thing
        you want to match on, where "thing" means either a literal
        character, one of the metacharacters listed above, or a group of
        characters or metacharacters in parentheses.

         *                   zero or more of the previous thing
         +                   one or more of the previous thing
         ?                   zero or one of the previous thing
         {3}                 matches exactly 3 of the previous thing
         {3,6}               matches between 3 and 6 of the previous thing
         {3,}                matches 3 or more of the previous thing

        Some brief examples:

         /^\d+/              string starts with one or more digits
         /^$/                nothing in the string (start and end are
                             adjacent)
         /(\d\s){3}/         three digits, each followed by a whitespace
                             character (eg "3 4 5 ")
         /(a.)+/             matches a string in which every odd-numbered
                             letter is a (eg "abacadaf")

         # This loop reads from STDIN, and prints non-blank lines:
         while (<>) {
             next if /^$/;
             print;
         }