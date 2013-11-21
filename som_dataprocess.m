%   This program is to find the best matching unit for the file generated
%   for geometric constrains. and construct the BOW
%   model
clf reset;
figure(gcf)

%   The map data are distributed into 16 sections as shown below so i need
%   16 for loops to read the data and decide the BMUs

clf
clc

%read the sMap

sMap  = som_read_cod('mapbook_15.cod');
msize = [100 100];
file=dir('E:\SOM\somtoolbox\siftgeo-origin\*.siftgeo');
fid = fopen('bos_maxmin.txt', 'w');
1
mapgraph=som_read_data('whole_mm100_1.data');
2
count=0;
%   Process of finding the best matching unit.
p=som_bmus(sMap, mapgraph);
3
for n=1:99
    [d,temp]=siftgeo_read(['E:\SOM\somtoolbox\siftgeo-origin\',file(n).name]); 
    length_t=size(temp);
	fprintf(fid, '%d\t', p(count+1:count+length_t));
    fprintf(fid, '\n');
	count=count+length_t(1,1);
end
3
mapgraph=som_read_data('whole_mm200_1.data');
4
count=0;
p=som_bmus(sMap, mapgraph);
for n=100:199
    [d,temp]=siftgeo_read(['E:\SOM\somtoolbox\siftgeo-origin\',file(n).name]); 
    length_t=size(temp);
	fprintf(fid, '%d\t', p(count+1:count+length_t));
    fprintf(fid, '\n');
	count=count+length_t(1,1);
end
5
mapgraph=som_read_data('whole_mm300_1.data');
6
count=0;

p=som_bmus(sMap, mapgraph);
for n=200:299
    [d,temp]=siftgeo_read(['E:\SOM\somtoolbox\siftgeo-origin\',file(n).name]); 
    length_t=size(temp);
	fprintf(fid, '%d\t', p(count+1:count+length_t));
    fprintf(fid, '\n');
	count=count+length_t(1,1);
end
7
mapgraph=som_read_data('whole_mm400_1.data');
8
count=0;
p=som_bmus(sMap, mapgraph);
for n=300:399
    [d,temp]=siftgeo_read(['E:\SOM\somtoolbox\siftgeo-origin\',file(n).name]); 
    length_t=size(temp);
	fprintf(fid, '%d\t', p(count+1:count+length_t));
    fprintf(fid, '\n');
	count=count+length_t(1,1);
end

mapgraph=som_read_data('whole_mm500_1.data');

count=0;
p=som_bmus(sMap, mapgraph);
for n=400:499
    [d,temp]=siftgeo_read(['E:\SOM\somtoolbox\siftgeo-origin\',file(n).name]); 
    length_t=size(temp);
	fprintf(fid, '%d\t', p(count+1:count+length_t));
    fprintf(fid, '\n');
	count=count+length_t(1,1);
end

mapgraph=som_read_data('whole_mm600_1.data');

count=0;
p=som_bmus(sMap, mapgraph);
for n=500:599
    [d,temp]=siftgeo_read(['E:\SOM\somtoolbox\siftgeo-origin\',file(n).name]); 
    length_t=size(temp);
	fprintf(fid, '%d\t', p(count+1:count+length_t));
    fprintf(fid, '\n');
	count=count+length_t(1,1);
end

mapgraph=som_read_data('whole_mm700_1.data');

count=0;
p=som_bmus(sMap, mapgraph);
for n=600:699
    [d,temp]=siftgeo_read(['E:\SOM\somtoolbox\siftgeo-origin\',file(n).name]); 
    length_t=size(temp);
	fprintf(fid, '%d\t', p(count+1:count+length_t));
    fprintf(fid, '\n');
	count=count+length_t(1,1);
end

mapgraph=som_read_data('whole_mm800_1.data');

count=0;
p=som_bmus(sMap, mapgraph);
for n=700:799
    [d,temp]=siftgeo_read(['E:\SOM\somtoolbox\siftgeo-origin\',file(n).name]); 
    length_t=size(temp);
	fprintf(fid, '%d\t', p(count+1:count+length_t));
    fprintf(fid, '\n');
	count=count+length_t(1,1);
end

mapgraph=som_read_data('whole_mm900_1.data');

count=0;
p=som_bmus(sMap, mapgraph);
for n=800:899
    [d,temp]=siftgeo_read(['E:\SOM\somtoolbox\siftgeo-origin\',file(n).name]); 
    length_t=size(temp);
	fprintf(fid, '%d\t', p(count+1:count+length_t));
    fprintf(fid, '\n');
	count=count+length_t(1,1);
end

mapgraph=som_read_data('whole_mm1000_1.data');

count=0;
p=som_bmus(sMap, mapgraph);
for n=900:999
    [d,temp]=siftgeo_read(['E:\SOM\somtoolbox\siftgeo-origin\',file(n).name]); 
    length_t=size(temp);
	fprintf(fid, '%d\t', p(count+1:count+length_t));
    fprintf(fid, '\n');
	count=count+length_t(1,1);
end

mapgraph=som_read_data('whole_mm1100_1.data');

count=0;
p=som_bmus(sMap, mapgraph);
for n=1000:1099
    [d,temp]=siftgeo_read(['E:\SOM\somtoolbox\siftgeo-origin\',file(n).name]); 
    length_t=size(temp);
	fprintf(fid, '%d\t', p(count+1:count+length_t));
    fprintf(fid, '\n');
	count=count+length_t(1,1);
end

mapgraph=som_read_data('whole_mm1200_1.data');

count=0;
p=som_bmus(sMap, mapgraph);
for n=1100:1199
    [d,temp]=siftgeo_read(['E:\SOM\somtoolbox\siftgeo-origin\',file(n).name]); 
    length_t=size(temp);
	fprintf(fid, '%d\t', p(count+1:count+length_t));
    fprintf(fid, '\n');
	count=count+length_t(1,1);
end

mapgraph=som_read_data('whole_mm1300_1.data');

count=0;
p=som_bmus(sMap, mapgraph);
for n=1200:1299
    [d,temp]=siftgeo_read(['E:\SOM\somtoolbox\siftgeo-origin\',file(n).name]); 
    length_t=size(temp);
	fprintf(fid, '%d\t', p(count+1:count+length_t));
    fprintf(fid, '\n');
	count=count+length_t(1,1);
end

mapgraph=som_read_data('whole_mm1400_1.data');

count=0;
p=som_bmus(sMap, mapgraph);
for n=1300:1399
    [d,temp]=siftgeo_read(['E:\SOM\somtoolbox\siftgeo-origin\',file(n).name]); 
    length_t=size(temp);
	fprintf(fid, '%d\t', p(count+1:count+length_t));
    fprintf(fid, '\n');
	count=count+length_t(1,1);
end

mapgraph=som_read_data('whole_mm.data');

count=0;
p=som_bmus(sMap, mapgraph);
for n=1400:1491
    [d,temp]=siftgeo_read(['E:\SOM\somtoolbox\siftgeo-origin\',file(n).name]); 
    length_t=size(temp);
	fprintf(fid, '%d\t', p(count+1:count+length_t));
    fprintf(fid, '\n');
	count=count+length_t(1,1);
end

fclose(fid);



