%Inclass assignment 4. Due at the start of class on 9/12/17

%1. (a) Write code that makes a file with the words "Random numbers 1" on its
%own line, then 10 lines with 13 random numbers each, then "Random numbers
%2" on its own line, then 9 lines with 7 random numbers each. 
filename = 'randomNumbers.txt';
fid = fopen(filename,'w');

fprintf(fid,'Random Numbers 1 \n');
ii = 0;
while ii < 10
   ii = ii+1;
   rand_Num = rand(1,13);
   str2prnt = num2str(rand_Num);
   fprintf(fid,'%s\n',str2prnt);
end %%prints 13 random Numbers on 10 lines

fprintf(fid,'Random Numbers 2 \n');%%prints 7 random Numbers on 9 lines
ii = 0;
while ii < 9
   ii = ii+1;
   rand_Num = rand(1,7);
   str2prnt = num2str(rand_Num);
   fprintf(fid,'%s\n',str2prnt);
end
%%
%(b) Write code that reads only the first line of random numbers in the file and stores
%them as numbers in an array. 



% 2. Write a function that takes an array as input and returns a logical
% variable which is true if the sum of the numbers in the array is greater
% than or equal to 10 and false if it is less than 10. 