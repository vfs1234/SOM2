%   This program is to find the best matching unit and construct the BOW
%   model
clf reset;

clf
clc

%read the sMap
1
sMap  = som_read_cod('mapbook_full_20131022.cod');
msize = [100 100];
file=dir('E:\SOM\somtoolbox\siftgeo-origin\*.siftgeo');
fid = fopen('bos_20131023.txt', 'w');
2
count=0;

3
for n=1:length(file)
    if (mod(n,100)==0)
        n
    end
    mapgraph=siftgeo_read(['E:\SOM\somtoolbox\siftgeo-origin\',file(n).name]);
    p=som_bmus(sMap, mapgraph);
	fprintf(fid, '%d\t', p);
    fprintf(fid, '\n');
end


fclose(fid);



