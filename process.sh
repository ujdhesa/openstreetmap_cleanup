wget http://download.geofabrik.de/europe/kosovo-latest.osm.bz2
bzcat kosovo-latest.osm.bz2  | perl findnames.pl   > report.html
