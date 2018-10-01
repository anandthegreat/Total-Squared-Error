%MATLAB R2015a%
%ANAND 2017218%
%anand17218@iiitd.ac.in%
%AIRFOIL SELF NOISE%



A=load('airfoil.txt');
sum=0;
count=1;
no_of_rows=size(A,1);

while(count<=no_of_rows)
   excluded_inp=A(count,1:5);
   excluded_op=A(count,6);
   low=count-1;
   high=count+1;
   temp1=A(1:low,1:5);
   temp2=A(high:no_of_rows,1:5);
   inpmat=[temp1;temp2];
   temp3=A(1:low,6);
   temp4=A(high:no_of_rows,6);
   outmat=[temp3;temp4];
   answer=inv((inpmat')*inpmat)*((inpmat')*outmat);
   answer=excluded_inp*answer;
   answer=answer-excluded_op;
   answer=answer*answer;
   sum=sum+answer;
   count=count+1;
end

disp(sum);
