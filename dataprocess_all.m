% Draft file of using the geometric constrains


clc
%    INITIALIZE AND TRAIN THE SELF-ORGANIZING MAP
%    ============================================

%    Here are 300 data points sampled from the unit square:
1
long_dist=100;
file=dir('E:\SOM\somtoolbox\siftgeo-origin\*.siftgeo');

[D, temp_t]=siftgeo_read('E:\SOM\somtoolbox\siftgeo-origin\100000.siftgeo');
length=size(temp_t);
length(1,1)
mapgraph=zeros(length(1,1),128*3);

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
2
%length(file)
for n=100:1491
    if (strcmp(file(n).name,'100000.siftgeo')==1)
        continue;
    end
    if (mod(n,100)==0)
        filestring= strcat( 'whole_mm',int2str(n),'.data')
        som_write_data(mapgraph,filestring);
    end
    [D, temp_t]=siftgeo_read(['E:\SOM\somtoolbox\siftgeo-origin\',file(n).name]);
    length=size(temp_t);
    length(1,1)
    mapgraph_t=zeros(length(1,1),128*3);
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
    
    for j=1:length(1,1)
        if (mod(j,100)==1)
            n
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
        
        mapgraph_t(j,:)=[D(j,:),max(inArray),mean(inArray)];
    end;
    
    if (mod(n,100)==0) 
        mapgraph=mapgraph_t;
    else
        mapgraph=[mapgraph;mapgraph_t];
    end
    
end

som_write_data(mapgraph,'whole_mm.data');


%sMap  = som_seqtrain(sMap,mapgraph);




%som_write_cod(sMap,'mapbook_withstates_300_100_100.cod')




%    ============================================





