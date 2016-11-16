sudo apt-get -y install postgresql-9.1-postgis
# if contrib cannot be found, use sudo apt-get install postgresql-x.x0postgis-scripts 
sudo -u postgres psql -d census -f /usr/share/postgresql/9.1/contrib/postgis-1.5/postgis.sql
sudo -u postgres psql -d census -f /usr/share/postgresql/9.1/contrib/postgis-1.5/spatial_ref_sys.sql
sudo -u postgres psql -d census -f /usr/share/postgresql/9.1/contrib/postgis_comments.sql
sudo -u postgres psql -d census -c "GRANT SELECT ON spatial_ref_sys TO PUBLIC;"
sudo -u postgres psql -d census -c "GRANT ALL ON geometry_columns TO census;"
