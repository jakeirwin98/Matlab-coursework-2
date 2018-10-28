%Jake Irwin eayjni@nottingham.ac.uk
%Q2

clear
a=input('Enter your name\n','s');    %Will prompt user to input name or any string which will later be converted to ascii
b=sprintf('Your name is %s',a);
disp(b)
x=double(a)                   %Command to convert letters into ASCII code
disp('Above is your name in ASCII numbers')
%67 111 109 112 117 116 101 114 115  32 115 116 111 114 101 32 97 108 108 32 100 97 116 97 32 97 115 32 110 117 109 98 101 114 115