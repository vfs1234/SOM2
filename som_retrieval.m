%   This program is the basic reading imput and trainning program.
clc

%    Read file direction setting 'sift files'
file=dir('E:\SOM\somtoolbox\siftgeo-origin\*.siftgeo');

%   Read the first File
temp=siftgeo_read('E:\SOM\somtoolbox\siftgeo-origin\100000.siftgeo');

%   Set the map size
msize = [80 80];

%    randinit initialized the SOM map
sMap  = som_randinit(temp, 'msize', msize);

array=temp;

%   Read data and train every 1000 pictures
for n=2:length(file)
    if (mod(n,100)==0)
        n
        som_write_data(array,'temp.data');
        D=som_read_data('temp.data');
        %   Use batch trainnning to train the map
        sMap  = som_batchtrain(sMap,D);
        array=siftgeo_read(['E:\SOM\somtoolbox\siftgeo-origin\',file(n).name]);
        continue;
    end
    temp=siftgeo_read(['E:\SOM\somtoolbox\siftgeo-origin\',file(n).name]);
    array=[array;temp];
end

som_write_data(array,'temp.data');
D=som_read_data('temp.data');
sMap  = som_batchtrain(sMap,D);

%   Write the trained map into files
som_write_cod(sMap,'mapbook_full_20131030_8080.cod')


