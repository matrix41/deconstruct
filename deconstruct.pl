#! /usr/bin/perl 

use strict;
use warnings;
use feature qw(switch say); # need this for GIVEN-WHEN block

#Define: 
my $inputfile;

# print "$ARGV[0]\n";
$inputfile = $ARGV[0];

#Declare new filehandle and associated it with filename: 
open (my $fh, '<', $inputfile) or die "\nCould not open file '$inputfile' $!\n";

my @array = <$fh>;

close ($fh);

# print $array[0], "\n";
# print $array[1], "\n";
# print $array[9], "\n";

my @split_parameters = split(/\|/, $array[9]);

for ( my $i = 0 ; $i < $#split_parameters ; $i++ )
{
  print "$split_parameters[$i]\n";
}

