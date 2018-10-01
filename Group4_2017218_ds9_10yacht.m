%MATLAB R2015a%
%ANAND 2017218%
%anand17218@iiitd.ac.in%
%Yacht Hydrodynamics%


sum=0;
count=1;
no_of_rows=size(yatchtable,1);

while(count<=no_of_rows)
   excluded_inp=yatchtable(count,1:6);
   excluded_op=yatchtable(count,7);
   low=count-1;
   high=count+1;
   temp1=yatchtable(1:low,1:6);
   temp2=yatchtable(high:no_of_rows,1:6);
   inpmat=[temp1;temp2];
   temp3=yatchtable(1:low,7);
   temp4=yatchtable(high:no_of_rows,7);
   outmat=[temp3;temp4];
   answer=inv((inpmat')*inpmat)*((inpmat')*outmat);
   answer=excluded_inp*answer;
   answer=answer-excluded_op;
   answer=answer*answer;
   sum=sum+answer;
   count=count+1;
end

disp(sum);
