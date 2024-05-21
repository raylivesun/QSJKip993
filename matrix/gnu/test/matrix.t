#!/usr/bin/perl

use IO::File;
use File::Basename;
use Getopt::Long;
use strict;
use warnings;

my $usager = shift || warnings "uninitialized";

my $usager_dir = <<USAGE;
Usage: $usager -d <directory>

-d <directory>

   The directory where the documentation is located. Default is the current working directory.

   The directory must contain a README.md file.

USAGE

my $directory = shift || $usager_dir;

my $readme_file = "$directory/README.md";

if ( ! -d $readme_file) {
    die "Couldn't find README.md file";
} else {
    return $readme_file;
}

1;

__END__