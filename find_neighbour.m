function [X, row,column] = find_neighbour (index, size_column, size_row)
row=mod(index-1,size_column)+1;
column=ceil(index/size_column);
X=zeros(9,1);

xi=[-1,0,1,-1,0,1,-1,0,1];
yi=[1,1,1,0,0,0,-1,-1,-1];
counts=1;
for n=1:9
    if (( xi(n)+row > size_column) || (xi(n)+row<=0))
        continue;
    end
    if ( ((yi(n)+column)>size_row) || (yi(n)+column)<=0)
        1
        continue;
        
    end
    X(counts)=(yi(n)+column-1)*size_column+(xi(n)+row);
    counts=counts+1;
end