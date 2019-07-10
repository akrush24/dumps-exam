#!/usr/bin/perl
#101
#system('curl -A "Googlebot/2.1 (+http://www.google.com/bot.html)" https://vceguide.com/which-of-the-following-are-filesystems-which-can-be-used-on-linux-root-partitions/ > dumps_101.html' );
#102
system('curl -A "Googlebot/2.1 (+http://www.google.com/bot.html)" https://vceguide.com/lpi/102-400-lpi-level-1-exam-102-junior-level-linux-certification-part-2-of-2/ > dumps_102.html' );

#my $filename = $ARGV[0];
my $filename = 'dumps_102.html';


open(FH, $filename) or die "Sorry!! couldn't open"; 

while (<FH>)
{
#while ( /<a style="width: 100%;" href=\"([^"]+)">(Question[^<]+)/gm ) {
while ( /<a.*?href="([^"]+)".*?>(Question\s\d{1,3}+)/gm ) {
#while ( /href="([^"]+)"\>/gm ) {
  print $2." ".$1."\n";
}
}
