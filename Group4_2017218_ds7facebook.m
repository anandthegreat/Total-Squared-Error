%MATLAB R2015a%
%ANAND 2017218%
%anand17218@iiitd.ac.in%
%Facebook metrics%

sum=0;
count=1;
no_of_rows=size(facebook,1);
while(count<=no_of_rows)
   excluded_inp=facebook(count,1:14);
   excluded_op=facebook(count,15);
   low=count-1;
   high=count+1;
   temp1=facebook(1:low,1:14);
   temp2=facebook(high:no_of_rows,1:14);
   inpmat=[temp1;temp2];
   temp3=facebook(1:low,15);
   temp4=facebook(high:no_of_rows,15);
   outmat=[temp3;temp4];
   answer=inv((inpmat')*inpmat)*((inpmat')*outmat);
   answer=excluded_inp*answer;
   answer=answer-excluded_op;
   answer=answer*answer;
   sum=sum+answer;
   count=count+1;
end

disp(sum);
