use strict;
use warnings;
use Data::Dumper;

# temp variables
my %seen;

sub process {
    my $d="";
    my $url="";
    while (<>) {
	chomp;
	if (/^\t<(way|node|relation) id=\"(\d+)\"/)
	{
	    $url = "https://www.openstreetmap.org/$1/$2";
	    $d=$_;
	}   
	
	if (/k=\"is_in:country\"\s+v=\"Serbia\"/) {
	    $seen{$url}=$url;	    
	}	
	
    }    
}

sub report {
    print "<html>";
    foreach my $name2 (sort keys %seen)     {
	my $u = $seen{$name2};
	print "<p>$name2\t$u</p>\n";
    }
        print "</html>";

}


process();
report();
