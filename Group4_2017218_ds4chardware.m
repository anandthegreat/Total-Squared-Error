%MATLAB R2015a%
%ANAND 2017218%
%anand17218@iiitd.ac.in%
%Computer Hardware%

sum=0;
count=1;
no_of_rows=size(machine,1);
while(count<=no_of_rows)
   excluded_inp=machine(count,1:7);
   excluded_op=machine(count,8);
   low=count-1;
   high=count+1;
   temp1=machine(1:low,1:7);
   temp2=machine(high:no_of_rows,1:7);
   inpmat=[temp1;temp2];
   temp3=machine(1:low,8);
   temp4=machine(high:no_of_rows,8);
   outmat=[temp3;temp4];
   answer=inv((inpmat')*inpmat)*((inpmat')*outmat);
   answer=excluded_inp*answer;
   answer=answer-excluded_op;
   answer=answer*answer;
   sum=sum+answer;
   count=count+1;
end

disp(sum);
