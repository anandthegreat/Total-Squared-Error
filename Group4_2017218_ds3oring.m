%MATLAB R2015a%
%ANAND 2017218%
%anand17218@iiitd.ac.in%
%o-ring-erosion-only.data%


sum=0;
count=1;
no_of_rows=size(oring,1);

while(count<=no_of_rows)
   
   flag1=oring(count,1);
   flag2=oring(count,3:5);
   excluded_inp=[flag1,flag2];
   excluded_op=oring(count,2);
   low=count-1;
   high=count+1;
   tempx=oring(1:low,1);
   tempxx=oring(1:low,3:5);
   temp1=[tempx,tempxx];
   temp2x=oring(high:no_of_rows,1);
   temp2xx=oring(high:no_of_rows,3:5);
   temp2=[temp2x,temp2xx];
   inpmat=[temp1;temp2];
   temp3=oring(1:low,2);
   temp4=oring(high:no_of_rows,2);
   outmat=[temp3;temp4];
   answer=inv((inpmat')*inpmat)*((inpmat')*outmat);
   answer=excluded_inp*answer;
   answer=answer-excluded_op;
   answer=answer*answer;
   sum=sum+answer;
   count=count+1;
end

disp(sum);
