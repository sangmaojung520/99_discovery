use strict;
use warnings;
use Math::Trig;



print "Penicillin: ".&Penicillin()."\n";

sub formula{
	my $ac ; # Atomic Number
	my $na ; # Number of Atom
	
	($ac,$na)=@_;
	
	return sprintf("%.20f",((log((1/137)) /log 8960*pi()*(($ac)**9))**3)**($na));
};

sub Penicillin{
	
	my $total = &formula(6,9)+&formula(1,11)+&formula(7,2)+&formula(8,4)+&formula(16,1);
	
	return $total;
	
};