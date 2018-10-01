%MATLAB R2015a%
%ANAND 2017218%
%anand17218@iiitd.ac.in%
%Combined Cycle Power Plant%


sum=0;
count=1;
no_of_rows=size(combinedcc,1);


while(count<=no_of_rows)
   excluded_inp=combinedcc(count,1:4);
   excluded_op=combinedcc(count,5);
   low=count-1;
   high=count+1;
   temp1=combinedcc(1:low,1:4);
   temp2=combinedcc(high:no_of_rows,1:4);
   inpmat=[temp1;temp2];
   temp3=combinedcc(1:low,5);
   temp4=combinedcc(high:no_of_rows,5);
   outmat=[temp3;temp4];
   answer=inv((inpmat')*inpmat)*((inpmat')*outmat);
   answer=excluded_inp*answer;
   answer=answer-excluded_op;
   answer=answer*answer;
   sum=sum+answer;
   count=count+1;
end

disp(sum);
