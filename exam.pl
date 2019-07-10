#!/usr/bin/perl
my $filename = $ARGV[0];
open(FH, $filename) or die "Sorry!! couldn't open"; 

while (<FH>)
{
s/&lt;/\</g;
s/&gt;/\>/g;
s/&#038;/\&/g;
s/&quot;/\"/g;
s/&#8221;/\”/g;
s/#8217;/\’/g;
s/#8216;/\‘/g;
s/#8211;/\–/g;

if ( m/^(Question\s\d{1,3}+)/gm ){print "[".$1."]\n"}
if ( m/class="entry-title[^\>]+>(.+)<\/h1>/gm ){print $1."\n"}
if ( m/<strong>(.+)<\/strong><br \/>/gm ){print $1."\n"}
if ( m/(Correct Answer:[^\<]+?)\</gm ){print "\n\n\n\n\n\n\n\n".$1."\n\n\n"}

#while ( /class="entry-title[^\>]+>(.+)<\/h1>/gm ) {
#while ( m/\<p\>(.+)\<br \/>.+\<strong\>/gm ) {
#  print $1;
#}
}
