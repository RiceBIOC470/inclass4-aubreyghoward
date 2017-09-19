%AW: loosk good. 1/1.


%Inclass assignment 4. Due at the start of class on 9/12/17

%1. (a) Write code that makes a file with the words "Random numbers 1" on its
%own line, then 10 lines with 13 random numbers each, then "Random numbers
%2" on its own line, then 9 lines with 7 random numbers each. 
clear all
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
%(b) Write code that reads only the first line of random numbers in the file and stores
%them as numbers in an array. 
fid = fopen(filename,'r');%points to the file we made in the last question
q = 0
while q < 2%searches for the line of the text document we are looking for. In this case, line 2.
    line1 = fgetl(fid);
    q = q+1;
    line1 
end % ends by printing line 2 for comparison to the end array.

strarr = strsplit(line1," "); %breaks up the found line into a cell array of strings
cellarr = cellfun(@str2num,strarr);%changes strings to numbers in the cell array
cellarr %prints cell array to compare to line1 above


%%
% 2. Write a function that takes an array as input and returns a logical
% variable which is true if the sum of the numbers in the array is greater
% than or equal to 10 and false if it is less than 10. 
clear all

y = [2,3,5]
sumcheck(y)

function [suum] = sumcheck(x)
        k = sum(x)
        if k >= 10
            suum = true
        else 
            suum = false
        end
end
