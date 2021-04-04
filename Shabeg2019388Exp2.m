%NAME- Shabeg Singh Gill
%ROLL NO- 2019388

function Shabeg2019388Exp2

arr3= importdata('Shabeg2019388Data2.txt', ' ');
arr3=arr3.';
arr4=arr3(31:1:40);
arr3=arr3(1:1:30);
arr3=sort(arr3);

b=arr3;
sort(arr3);
sort(b);

figure;
histogram(arr3);

PDF2=fitdist(arr3, 'normal')
E2= PDF2.mu;
disp("Expected Time Gap is: "+E2)
histfit(arr3);
cd2=nnz(arr3<E2);
cd2=cd2/30;
disp("Probability that time elapsed until next message is less than expected time gap is: "+cd2);

sort(arr4);

headcount=0;
tailcount=0;
for i=1:length(arr4)
    if(arr4(i)<E2)
        headcount=headcount+1; 
    else
        tailcount=tailcount+1;
    end
end

disp("No. of Heads are: "+headcount);
disp("No. of Tails are: "+tailcount);
end




  
