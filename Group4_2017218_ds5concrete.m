%MATLAB R2015a%
%ANAND 2017218%
%anand17218@iiitd.ac.in%
%Concrete Compressive Strength%

sum=0;
count=1;
no_of_rows=size(ConcreteData,1);
while(count<=no_of_rows)
   excluded_inp=ConcreteData(count,1:8);
   excluded_op=ConcreteData(count,9);
   low=count-1;
   high=count+1;
   temp1=ConcreteData(1:low,1:8);
   temp2=ConcreteData(high:no_of_rows,1:8);
   inpmat=[temp1;temp2];
   temp3=ConcreteData(1:low,9);
   temp4=ConcreteData(high:no_of_rows,9);
   outmat=[temp3;temp4];
   answer=inv((inpmat')*inpmat)*((inpmat')*outmat);
   answer=excluded_inp*answer;
   answer=answer-excluded_op;
   answer=answer*answer;
   sum=sum+answer;
   count=count+1;
end

disp(sum);
