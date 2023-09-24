### Jessalyn Ayars ###
### 01/19/23 ###
### submit file for megafires project raster processing: multiplying by 100

universe = docker
docker_image = jessalynayars/geospatial:1

log = sp-cleaning_$(Cluster)_$(new).log  
executable = chtc-sp-cleaning.sh

arguments = $(tif) $(tfw) $(aux) $(new)

output = sp-cleaning_$(Cluster)_$(new).out
error = sp-cleaning_$(Cluster)_$(new).err

should_transfer_files = YES
when_to_transfer_output = ON_EXIT
transfer_input_files = chtc-sp-cleaning.R
Requirements = (Target.HasCHTCStaging == true)

request_cpus = 1
request_memory = $(mem) MB
request_disk = $(disk) KB

queue tif, tfw, aux, new, mem, disk from chtc-sp-cleaning.txt