%   This program train the map of geometric constrain data.
mapgraph=som_read_data('whole_mm100_1.data');
msize = [100 200];
sMap  = som_randinit(mapgraph, 'msize', msize);
sMap  = som_batchtrain(sMap,mapgraph);
som_write_cod(sMap,'mapbook_1.cod')


mapgraph=som_read_data('whole_mm200_1.data');

sMap  = som_read_cod('mapbook_1.cod');
sMap  = som_batchtrain(sMap,mapgraph);
som_write_cod(sMap,'mapbook_2.cod')

mapgraph=som_read_data('whole_mm300_1.data');

sMap  = som_read_cod('mapbook_2.cod');
sMap  = som_batchtrain(sMap,mapgraph);
som_write_cod(sMap,'mapbook_3.cod')

mapgraph=som_read_data('whole_mm400_1.data');

sMap  = som_read_cod('mapbook_3.cod');
sMap  = som_batchtrain(sMap,mapgraph);
som_write_cod(sMap,'mapbook_4.cod')

mapgraph=som_read_data('whole_mm500_1.data');

sMap  = som_read_cod('mapbook_4.cod');
sMap  = som_batchtrain(sMap,mapgraph);
som_write_cod(sMap,'mapbook_5.cod')

mapgraph=som_read_data('whole_mm600_1.data');

sMap  = som_read_cod('mapbook_5.cod');
sMap  = som_batchtrain(sMap,mapgraph);
som_write_cod(sMap,'mapbook_6.cod')

mapgraph=som_read_data('whole_mm700_1.data');

sMap  = som_read_cod('mapbook_6.cod');
sMap  = som_batchtrain(sMap,mapgraph);
som_write_cod(sMap,'mapbook_7.cod')

mapgraph=som_read_data('whole_mm800_1.data');

sMap  = som_read_cod('mapbook_7.cod');
sMap  = som_batchtrain(sMap,mapgraph);
som_write_cod(sMap,'mapbook_8.cod')

mapgraph=som_read_data('whole_mm900_1.data');

sMap  = som_read_cod('mapbook_8.cod');
sMap  = som_batchtrain(sMap,mapgraph);
som_write_cod(sMap,'mapbook_9.cod')

mapgraph=som_read_data('whole_mm1000_1.data');

sMap  = som_read_cod('mapbook_9.cod');
sMap  = som_batchtrain(sMap,mapgraph);
som_write_cod(sMap,'mapbook_10.cod')

mapgraph=som_read_data('whole_mm1100_1.data');

sMap  = som_read_cod('mapbook_10.cod');
sMap  = som_batchtrain(sMap,mapgraph);
som_write_cod(sMap,'mapbook_11.cod')

mapgraph=som_read_data('whole_mm1200_1.data');

sMap  = som_read_cod('mapbook_11.cod');
sMap  = som_batchtrain(sMap,mapgraph);
som_write_cod(sMap,'mapbook_12.cod')

mapgraph=som_read_data('whole_mm1300_1.data');

sMap  = som_read_cod('mapbook_12.cod');
sMap  = som_batchtrain(sMap,mapgraph);
som_write_cod(sMap,'mapbook_13.cod')

mapgraph=som_read_data('whole_mm1400_1.data');

sMap  = som_read_cod('mapbook_13.cod');
sMap  = som_batchtrain(sMap,mapgraph);
som_write_cod(sMap,'mapbook_14.cod')

mapgraph=som_read_data('whole_mm.data');

sMap  = som_read_cod('mapbook_14.cod');
sMap  = som_batchtrain(sMap,mapgraph);
som_write_cod(sMap,'mapbook_15.cod')
