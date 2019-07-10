#!/bin/bash
> all.html;
cat links.list | while read U;do echo $U|awk '{print $1,$2}' >> all2.html; echo $U|awk '{print $NF}'|curl -A "Googlebot/2.1 (+http://www.google.com/bot.html)" "$(</dev/stdin)" >> all.html;done
