#!c:/perl/bin
#webchecker1.plx
#138
use warnings;
use strict;
my %seen;

print "Web Checker, version 1.\n";
# teach users how to use program if they don't include vars
die "Usage: $0 <starting point> <site base>\n"
	unless @ARGV == 2;
	
my ($start, $base) = @ARGV;
# add "/" to $base unless it already ends in one
$base .= "/" unless $base =~ m|/$|;

die "$start appears not to be in $base\n"
	unless in_our_site($start);
traverse($start);

sub traverse {
	my $url = shift;
	# the following line is a problem
	$url =~ s|/$|/index.html|;
	# increment $seen{$url} and return if it's over 1 already
	return if $seen{$url}++;	# break circular links
	my $page = get($url);
	if ($page) {
		print "Link OK : $url\n";
	} else {
		print "Link dead : $url\n";
		return;						# Terminating condition: if dead
	}
	return unless in_our_site($url); # Terminating condition: if external
	my @links = extract_links($page,$url);
	return unless @links;			# Terminating condition: no links
	for my $link (@links) {
		traverse($link); # recurse
	}
}
sub in_our_site {
	my $url = shift;
	return index($url, $base) == 0;
}

sub get {
	my $what = shift;
	sleep 5; # be friendly
	# ugliest syntax highlighting ever
	return `lynx -source $what`;
}

sub extract_links {
	my ($page, $url) = @_;
	my $dir = $url;
	my @links;
	# directory = the current link minus the filename
	$dir =~ s|(.*)/.*?$|$1|;
	# links are all cases in which there is an HREF tag
	# the following line is a problem
	for (@links = ($page =~ /<A HREF=["']?([^\s"'>]+)["']?/gi)) {
		$_ = $base.$_ if s|^/||;
		$_ = $dir."/".$_ if !/^(ht|f)tp:/;
	}
	return @links;
}