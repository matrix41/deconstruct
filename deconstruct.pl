#! /usr/bin/perl 

use strict;
use warnings;
use feature qw(switch say); # need this for GIVEN-WHEN block

#Define: 
my $inputfile;

# Get filename from command line argument 
$inputfile = $ARGV[0];

# Declare new filehandle and associate it with filename 
open (my $fh, '<', $inputfile) or die "\nCould not open file '$inputfile' $!\n";

# Point array to filehandle.  
my @array = <$fh>;

# Close filehandle after filling array 
close ($fh);

# print $array[0], "\n";
# print $array[1], "\n";
# print $array[9], "\n";

# Array element 9 (ie the 10th row) is where the data starts.  
my @split_parameters = split(/\|/, $array[9]);

for ( my $i = 0 ; $i < $#split_parameters ; $i++ )
{
  print "$split_parameters[$i]\n";
}

