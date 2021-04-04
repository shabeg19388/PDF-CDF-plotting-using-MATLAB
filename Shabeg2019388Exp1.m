%NAME- Shabeg Singh Gill
%ROLL NO- 2019388

function Shabeg2019388Exp1 

arr1= importdata('Shabeg2019388Data1.txt', ' ');
arr1=arr1.';
arr2=arr1(31:1:40);
arr1=arr1(1:1:30);
arr1=sort(arr1);

b=arr1;
sort(arr1);
sort(b);

figure;
histogram(arr1);

PDF1=fitdist(arr1, 'normal')
E1= PDF1.mu;
disp("Expected Time Gap is: "+E1)
histfit(arr1);
cd1=nnz(arr1<E1);
cd1=cd1/30;
disp("Probability that time elapsed until next message is less than expected time gap is : "+cd1);

sort(arr2);

headcount=0;
tailcount=0;
for i=1:length(arr2)
    if(arr2(i)<E1)
        headcount=headcount+1; 
    else
        tailcount=tailcount+1;
    end
end

disp("No. of Heads are: "+headcount);
disp("No. of Tails are: "+tailcount);
end




  