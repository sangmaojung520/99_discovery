use strict;
use warnings;
use Math::Trig;



print "Allantoin: ".&Allantoin()."\n";

sub formula{
	my $ac ; # Atomic Number
	my $na ; # Number of Atom
	
	($ac,$na)=@_;
	
	return sprintf("%.20f",((log((1/137)) /log 8960*pi()*(($ac)**9))**3)**($na));
};

sub Allantoin{
	
	my $total = &formula(6,4)+&formula(1,6)+&formula(7,4)+&formula(8,3);
	
	return $total;
	
};