wget -m http://download.geofabrik.de/europe/kosovo-updates/ -l3 --no-parent
find -name \*.gz -exec zgrep user {} \; > userchanges.txt
cut -d= -f6 userchanges.txt | sort | uniq -c | sort -n
