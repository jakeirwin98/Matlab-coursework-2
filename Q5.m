%Jake Irwin eayjni@nottingham.ac.uk
%Q5

%tic
a=imread('museum_london.jpg')   %Stores image data into a variable
figure(1)
imshow(a)
L=a;
D=a;
b=size(a);
x_len=b(1);
y_len=b(2);

%for x=1:+1:x_len
 %   for y=1:+1:y_len
  %      sprintf('The brightness of pixel at %d,%d is %d', x, y, a(x,y))
  % D(x,y)=0.3*a(x,y);
   %L(x,y)=1.5*a(x,y);
  % end
%end
D=0.3*a;
L=1.5*a;
figure(2)
imshow(D)  %Image D is darker than a
figure(3)
imshow(L)  %Image L is lighter than a
%Elapsed time with nested for loop is 1.725530 seconds
%Elapsed time with matrix multiplication commands is 0.958854 seconds

%Programme runs slower at first as each for loop takes time to process and is done
%one value at a time in series
%With the matrix commands, values can be multiplied at the same time in parallel 
%which is much faster than doing each number one by one.
%toc