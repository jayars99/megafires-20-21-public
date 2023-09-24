### Jessalyn Ayars ###
### 01/19/23 ###
### submit file for megafires project raster processing: masking out bodies of water

universe = docker
docker_image = jessalynayars/geospatial:1

log = sp-cleaning-2_$(Cluster)_$(new).log  
executable = chtc-sp-cleaning-2.sh

arguments = $(tif) $(tfw) $(aux) $(new) $(mem) $(disk)

output = sp-cleaning-2_$(Cluster)_$(new).out
error = sp-cleaning-2_$(Cluster)_$(new).err

should_transfer_files = YES
when_to_transfer_output = ON_EXIT
transfer_input_files = chtc-sp-cleaning-2.R
Requirements = (Target.HasCHTCStaging == true)

request_cpus = 1
request_memory = $(mem) MB
request_disk = $(disk) KB

queue tif, tfw, aux, new, mem, disk from chtc-sp-cleaning-2.txt