%MATLAB R2015a%
%ANAND 2017218%
%anand17218@iiitd.ac.in%
%Solar Flares%

no_of_rows=size(flare,1);

sum=0;
sum2=0;
sum3=0;
count=1;
count2=1;
count3=1;


while(count<=no_of_rows)
   excluded_inp=flare(count,1:7);
   excluded_op=flare(count,8);
   low=count-1;
   high=count+1;
   temp1=flare(1:low,1:7);
   temp2=flare(high:no_of_rows,1:7);
   inpmat=[temp1;temp2];
   temp3=flare(1:low,8);
   temp4=flare(high:no_of_rows,8);
   outmat=[temp3;temp4];
   answer=inv((inpmat')*inpmat)*((inpmat')*outmat);
   answer=excluded_inp*answer;
   answer=answer-excluded_op;
   answer=answer*answer;
   sum=sum+answer;
   count=count+1;
end

disp(sum);



while(count2<=no_of_rows)
   excluded_inp=flare(count2,1:7);
   excluded_op=flare(count2,9);
   low=count2-1;
   high=count2+1;
   temp1=flare(1:low,1:7);
   temp2=flare(high:no_of_rows,1:7);
   inpmat=[temp1;temp2];
   temp3=flare(1:low,9);
   temp4=flare(high:no_of_rows,9);
   outmat=[temp3;temp4];
   answer=inv((inpmat')*inpmat)*((inpmat')*outmat);
   answer=excluded_inp*answer;
   answer=answer-excluded_op;
   answer=answer*answer;
   sum2=sum2+answer;
   count2=count2+1;
end

disp(sum2);



while(count3<=no_of_rows)
   excluded_inp=flare(count3,1:7);
   excluded_op=flare(count3,10);
   low=count3-1;
   high=count3+1;
   temp1=flare(1:low,1:7);
   temp2=flare(high:no_of_rows,1:7);
   inpmat=[temp1;temp2];
   temp3=flare(1:low,10);
   temp4=flare(high:no_of_rows,10);
   outmat=[temp3;temp4];
   answer=inv((inpmat')*inpmat)*((inpmat')*outmat);
   answer=excluded_inp*answer;
   answer=answer-excluded_op;
   answer=answer*answer;
   sum3=sum3+answer;
   count3=count3+1;
end

disp(sum3);

