# Download from: https://download.geofabrik.de/europe/great-britain/england.html

wget-P ../data/ https://download.geofabrik.de/europe/great-britain/england-latest.osm.pbf

conda activate ox
# Extract region by bbox
osmium extract --bbox 0.477,51.77,1.628,52.61 ../data/england-latest.osm.pbf -o ../data/esneft.osm
# Filter for roads only
osmium tags-filter -o ../data/esneft-highways.osm ../data/esneft.osm nw/highway


