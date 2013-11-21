





clc


long_dist=100;
%    Read file direction setting 'sift files'
file=dir('E:\SOM\somtoolbox\part\*.siftgeo');

[D, temp_t]=siftgeo_read('E:\SOM\somtoolbox\part\149902.siftgeo');
length=size(temp_t);
length(1,1)
mapgraph=zeros(length(1,1),128*3);

%   Simple geometric constrain
distance_ve=zeros(length(1,1),length(1,1));
%   Precalculate the distance
for i=1:length(1,1)
    %   The position of the feature on the original map
    x1=temp_t(i,1);
    y1=temp_t(i,2);
    for j=i:length(1,1)
        x2=temp_t(j,1);
        y2=temp_t(j,2);
        distance_ve(i,j)=sqrt( ((x1-x2)*(x1-x2)) + ((y1-y2)*(y1-y2)));
        distance_ve(j,i)=distance_ve(i,j);
    end
end
distance_ve(1,2)
%   Processing data
for j=1:length(1,1)
    if (mod(j,100)==1)
        'first'
        c = clock;
        disp(datestr(datenum(c(1),c(2),c(3),c(4),c(5),c(6))));
        j
    end
    inArray=zeros(1,128);
    flag=1;
    for k=1:length(1,1)
        if (k==j)
            continue;
        end;
        dist_t=distance_ve(j,k);
        if (dist_t<long_dist)
            if (flag==1)
                inArray=D(k,:);
                flag=0;
            else
                inArray=[inArray;D(k,:)];
            end;
        end;
    end;
    % min(inArray); min not useful cause everything is 0
    if (size(inArray,1)==1) 
        inArray=[inArray;inArray];
    end;
    mapgraph(j,:)=[D(j,:),max(inArray),mean(inArray)];
end;
2

msize = [100 100];

%    data reading

sMap  = som_randinit(mapgraph, 'msize', msize);
3
%length(file)
for n=1:305
    if (strcmp(file(n).name,'149902.siftgeo')==1)
        continue;
    end
    
    [D, temp_t]=siftgeo_read(['E:\SOM\somtoolbox\part\',file(n).name]);
    length=size(temp_t);
    length(1,1)
    distance_ve=zeros(length(1,1),length(1,1));
    for i=1:length(1,1)
        x1=temp_t(i,1);
        y1=temp_t(i,2);
        for j=i:length(1,1)
            x2=temp_t(j,1);
            y2=temp_t(j,2);
            distance_ve(i,j)=sqrt( ((x1-x2)*(x1-x2)) + ((y1-y2)*(y1-y2)));
            distance_ve(j,i)=distance_ve(i,j);
        end
    end
    distance_ve(1,2)
    for j=1:length(1,1)
        if (mod(j,100)==1)
            'first'
            c = clock;
            disp(datestr(datenum(c(1),c(2),c(3),c(4),c(5),c(6))));
            j
        end
        inArray=zeros(1,128);
        flag=1;
        for k=1:length(1,1)
            if (k==j)
                continue;
            end;
            dist_t=distance_ve(j,k);
            if (dist_t<long_dist)
                if (flag==1)
                    inArray=D(k,:);
                    flag=0;
                else
                    inArray=[inArray;D(k,:)];
                end;
            end;
        end;
        % min(inArray); min not useful cause everything is 0
        
        if (size(inArray,1)==1) 
            inArray=[inArray;inArray];
        end;
        mapgraph(j,:)=[D(j,:),max(inArray),mean(inArray)];
    end;
end

%   Write data
som_write_data(mapgraph,'system.data');


%sMap  = som_seqtrain(sMap,mapgraph);




%som_write_cod(sMap,'mapbook_withstates_300_100_100.cod')




%    ============================================





