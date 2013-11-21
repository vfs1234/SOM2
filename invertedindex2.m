
clc

%constant number of input data
N=1491;
row_size=60;
column_size=60;
Word=row_size*column_size;
wordCounts=zeros(Word, N);
1
%fid = fopen('bos.txt', 'r');
fid = fopen('bos_20131030_6060.txt', 'r');
for i=1:N
    t=fgets(fid);
    t=deblank(t);
    
    C = strsplit(t,'\t');
    
    sizeC=size(C);
    length=sizeC(2);
    if (length<=1)
        continue;
    end
    pp=str2double(C);
    
    for j=1:length        
        temp=pp(j);
        
        wordCounts(temp,i)=1+wordCounts(temp,i);
        
    end
end
2
fclose(fid);
[WeM weights]=tfidf2( wordCounts );

%calculation of cosine similarity
cosines=zeros(N,N);
for i=1:N
    for j=1:N
        qd=0;
        qsquare=0;
        dsquare=0;
        for t=1:Word
            q=WeM(t,i);
            d=WeM(t,j);
            qd=qd+q*d;
            qsquare=qsquare+q*q;
            dsquare=dsquare+d*d;
        end
        cosines(i,j)=qd/(sqrt(qsquare)*sqrt(dsquare));
    end
end

%{
cosines=zeros(N,N);
for i=1:N
    if (mod(i,100)==0)
        'icosines'
        i
    end
    
    for j=1:N
        sum=0.0;
        for t=1:10000
            sum=sum+WeM(t,i)*WeM(t,j);
        end
        cosines(i,j)=sum;
    end
end
%}
3
fid = fopen('baseline_20131023.dat', 'w');
%file=dir('E:\SOM\somtoolbox\part\*.siftgeo');
file=dir('E:\SOM\somtoolbox\siftgeo-origin\*.siftgeo');
for i=1:N
    if (mod(i,100)==0)
        i
    end
    s=strcat(file(i).name(1:end-7),'jpg');
    temp1=char(file(i).name);
    temp1=temp1(1:end-8);
    count=0;
    
    if (strcmp(temp1(end-1:end),'00')==1)
        tempM=cosines(i,:);
        
        [newA, inx]=sort(tempM,'descend');
        if i==1
            tempM
            
            newA
        end
        for j=1:N
            if inx(j)==i
                continue;
            end
            %cosine similarity similarity
            if (cosines(i,inx(j))>0)
                s=strcat([s,' ',num2str(count),' ',strcat(file(inx(j)).name(1:end-7),'jpg')]);
                count=count+1;
            end
        end
        fprintf(fid,'%s\n',s);
    end
end
fclose(fid);

