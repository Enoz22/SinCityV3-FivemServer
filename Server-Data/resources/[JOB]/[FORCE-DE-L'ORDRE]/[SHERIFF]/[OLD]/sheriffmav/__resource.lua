-- Manifest
resource_manifest_version '44febabe-d386-4d18-afbe-5e627f4af937'

files {
	'data/carcols.meta',
	'data/carvariations.meta',
	'data/handling.meta',
	'data/vehicles.meta',
    'data/contentunlocks.meta',
    'data/vehiclelayouts.meta',
    'data/shop_vehicle.meta',
}


data_file 'CARCOLS_FILE' 'data/carcols.meta'
data_file 'VEHICLE_VARIATION_FILE' 'data/carvariations.meta'
data_file 'HANDLING_FILE' 'data/handling.meta'
data_file 'VEHICLE_METADATA_FILE' 'data/vehicles.meta'

data_file 'CONTENT_UNLOCKING_META_FILE' 'data/contentunlocks.meta'
data_file 'VEHICLE_LAYOUTS_FILE' 'data/vehiclelayouts.meta'
data_file 'VEHICLE_SHOP_DLC_FILE' 'data/shop_vehicle.meta'


client_script { 'client/vehicle_name.lua' }
