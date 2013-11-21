echo on;
long_dist=100;



[D, temp_t]=siftgeo_read('E:\SOM\somtoolbox\part\149902.siftgeo');
length=size(temp_t)
length(1,1)
for j=1:length(1,1)
    x1=temp_t(j,1);
    y1=temp_t(j,2);
    inArray=zeros(1,128);
    flag=1;
    for k=1:length(1,1)
        if (k==j)
            continue;
        end
        x2=temp_t(k,1);
        y2=temp_t(k,2);
        dist_t=sqrt( ((x1-x2)*(x1-x2)) + ((y1-y2)*(y1-y2)));
        if (dist_t<long_dist)
            if (flag==1)
                inArray=D(k,:);
                flag=0;
            else
                inArray=[inArray;D];
            end
        end
    end
    min(inArray);
    max(inArray);
    mean(inArray)
    pause
end
echo off;
