DROP ROLE IF EXISTS newproducts;
CREATE ROLE newproducts  with password 'development' SUPERUSER INHERIT CREATEDB CREATEROLE LOGIN;
CREATE DATABASE politifact OWNER newproducts;
grant postgres to newproducts; 
CREATE EXTENSION postgis;
CREATE EXTENSION postgis_topology;
CREATE EXTENSION fuzzystrmatch;
CREATE EXTENSION postgis_tiger_geocoder;
 alter schema tiger owner to postgres;
 alter schema topology owner to postgres;
 alter schema tiger_data owner to postgres;
ALTER TABLE tiger.pagc_rules OWNER TO postgres;
ALTER TABLE topology.topology OWNER TO postgres;
ALTER TABLE topology.layer OWNER TO postgres;
ALTER TABLE tiger.geocode_settings OWNER TO postgres;
ALTER TABLE tiger.direction_lookup OWNER TO postgres;
ALTER TABLE tiger.secondary_unit_lookup OWNER TO postgres;
ALTER TABLE tiger.state_lookup OWNER TO postgres;
ALTER TABLE tiger.street_type_lookup OWNER TO postgres;
ALTER TABLE tiger.place_lookup OWNER TO postgres;
ALTER TABLE tiger.county_lookup OWNER TO postgres;
ALTER TABLE tiger.countysub_lookup OWNER TO postgres;
ALTER TABLE tiger.zip_lookup_all OWNER TO postgres;
ALTER TABLE tiger.zip_lookup_base OWNER TO postgres;
ALTER TABLE tiger.zip_lookup OWNER TO postgres;
ALTER TABLE tiger.zip_state OWNER TO postgres;
ALTER TABLE tiger.zip_state_loc OWNER TO postgres;
ALTER TABLE tiger.cousub OWNER TO postgres;
ALTER TABLE tiger.edges OWNER TO postgres;
ALTER TABLE tiger.addrfeat OWNER TO postgres;
ALTER TABLE tiger.faces OWNER TO postgres;
ALTER TABLE tiger.featnames OWNER TO postgres;
ALTER TABLE tiger.addr OWNER TO postgres;
ALTER TABLE tiger.zcta5 OWNER TO postgres;
ALTER TABLE tiger.loader_platform OWNER TO postgres;
ALTER TABLE tiger.loader_variables OWNER TO postgres;
ALTER TABLE tiger.loader_lookuptables OWNER TO postgres;
ALTER TABLE tiger.tract OWNER TO postgres;
ALTER TABLE tiger.tabblock OWNER TO postgres;
ALTER TABLE tiger.bg OWNER TO postgres;
ALTER TABLE tiger.pagc_gaz OWNER TO postgres;
ALTER TABLE tiger.pagc_lex OWNER TO postgres;
ALTER TABLE tiger.county OWNER TO postgres;
ALTER TABLE tiger.state OWNER TO postgres;
ALTER TABLE tiger.place OWNER TO postgres;
ALTER TABLE tiger.county_gid_seq OWNER TO postgres;
ALTER TABLE tiger.pagc_rules_id_seq OWNER TO postgres;
ALTER TABLE tiger.state_gid_seq OWNER TO postgres;
ALTER TABLE tiger.addr_gid_seq OWNER TO postgres;
ALTER TABLE tiger.place_gid_seq OWNER TO postgres;
ALTER TABLE tiger.tabblock_gid_seq OWNER TO postgres;
ALTER TABLE tiger.zcta5_gid_seq OWNER TO postgres;
ALTER TABLE tiger.pagc_lex_id_seq OWNER TO postgres;
ALTER TABLE tiger.cousub_gid_seq OWNER TO postgres;
ALTER TABLE tiger.bg_gid_seq OWNER TO postgres;
ALTER TABLE tiger.edges_gid_seq OWNER TO postgres;
ALTER TABLE topology.topology_id_seq OWNER TO postgres;
ALTER TABLE tiger.addrfeat_gid_seq OWNER TO postgres;
ALTER TABLE tiger.pagc_gaz_id_seq OWNER TO postgres;
ALTER TABLE tiger.faces_gid_seq OWNER TO postgres;
ALTER TABLE tiger.tract_gid_seq OWNER TO postgres;
ALTER TABLE tiger.featnames_gid_seq OWNER TO postgres;
ALTER TABLE public.spatial_ref_sys OWNER TO postgres;
GRANT ALL ON TABLE public.spatial_ref_sys TO postgres;
GRANT SELECT ON TABLE public.spatial_ref_sys TO public;