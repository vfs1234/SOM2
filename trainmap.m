%   Sample training program
mapgraph=som_read_data('system.data')
msize = [100 100];
sMap  = som_randinit(mapgraph, 'msize', msize);
sMap  = som_seqtrain(sMap,mapgraph);
som_write_cod(sMap,'mapbook_withstates_300_100_100.cod')