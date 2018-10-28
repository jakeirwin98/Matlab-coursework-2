%Jake Irwin eayjni@nottingham.ac.uk
%Q4

a=[0 0 1; 0 1 0; 0 0 1]    %Semi colon moves onto the next row in the matrix
b=[1 0 0; 0 1 0; 1 0 0]
B=a+b             %Matrix addition is the same command as normal addition on matlab.
C=b-a             %Matrix subtraction is the same command as normal subtraction on matlab.
D=a*b            %Matrix multiplication is also the same command as normal multiplication.
E=a+4             %Adds 4 to every value within the matrix
Z=-10+(20)*rand(10,10)      %Generates random matrix of values between 0 and 1, multiplies them by 20, then subtracts 10 from every value, meaning all values are between -10 to 10.
surf(Z,'edgecolor','none') %creates 3D plot of the data
determinant=det(Z)         %det command calculates the determinant of any square matrix