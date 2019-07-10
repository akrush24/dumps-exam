#!/usr/bin/perl -we
#
my $filename = $ARGV[0];
open(FH, $filename) or die "Sorry!! couldn't open"; 
{
	local $/;
        $content = <FH>;
}
close(FH);

#while (<FH>)
#{
#  $file=$_.$file;
#}
#


$_ = $content;

s/&lt;/\</gm;
s/&gt;/\>/gm;
s/&#038;/\&/gm;
s/&quot;/\"/gm;
s/&#8221;/\"/gm;
s/&#8217;/\'/gm;
s/&#8216;/\'/gm;
s/&#8211;/\-/gm;
s/&#8212;/\-/gm;

#if ( $content =~ m/^(Question\s\d{1,3}+)$/mg ){print "[".$1."]\n"}
if ( $content =~ m/^(Question\s\d{1,3}+)$/mg ){print $&}
#if ( $content =~ m/class="entry-title[^\>]+>(.+)<\/h1>/cg ){print $1."\n"}
#if ( m/<p>(.+)<br \/>/gm ){print $1."\n"}
#if ( m/<strong>(.+)<\/strong><br \/>/gm ){print $1."\n"}
#if ( m/(Correct Answer:[^\<]+?)\</gm ){print "\n\n\n\n\n\n\n\n\n\n".$1."\n\n"}
