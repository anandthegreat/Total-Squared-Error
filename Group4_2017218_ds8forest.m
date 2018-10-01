%MATLAB R2015a%
%ANAND 2017218%
%anand17218@iiitd.ac.in%
%Forest Fires%

no_of_rows=size(forestfires,1);
sum=0;
count=1;

while(count<=no_of_rows)
   excluded_inp=forestfires(count,1:10);
   excluded_op=forestfires(count,11);
    low=count-1;
   high=count+1;
   temp1=forestfires(1:low,1:10);
   temp2=forestfires(high:no_of_rows,1:10);
   inpmat=[temp1;temp2];
   temp3=forestfires(1:low,11);
   temp4=forestfires(high:no_of_rows,11);
   outmat=[temp3;temp4];
   answer=inv((inpmat')*inpmat)*((inpmat')*outmat);
   answer=excluded_inp*answer;
   answer=answer-excluded_op;
   answer=answer*answer;
   sum=sum+answer;
   count=count+1;
end

disp(sum);