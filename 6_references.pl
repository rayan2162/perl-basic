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