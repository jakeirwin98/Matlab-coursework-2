%Jake Irwin eayjni@nottingham.ac.uk
%Q8

clear
a=zeros(100,100);
for z1=30:50     %Commmands used to generate 3 triangle shapes for the christmas tree              
    for z2=30:z1
        a(z1,20+z2)=7;
        a(z1,80-z2)=7;
    end   
end   
for z1=40:70
    for z2=40:z1
        a(z1,10+z2)=7;
        a(z1,90-z2)=7;
    end
end
for z1=50:90
    for z2=50:z1
        a(z1,z2)=7;
        a(z1,100-z2)=7;
    end
end
for z1=91:100
    for z2=43:57
        a(z1,z2)=9;
    end
end  %Command for the tree stump
for z1=100          %2 Commands so snow will melt once it reaches the bottom
    for z2=1:42
    a(z1,z2)=5;
    end
end
for z1=100
    for z2=58:100
    a(z1,z2)=5;
    end
end     
for z1=93:99 %Present box and cross commands
    for z2=30:40
        a(z1,z2)=6;
    end
end
for z1=96
    for z2=30:40
        a(z1,z2)=3;
    end
end 
for z1=93:99
    for z2=35
        a(z1,z2)=3;
    end
end
for z1=93:99 
    for z2=60:70
        a(z1,z2)=4;
    end
end %Present box 2
for z1=96
    for z2=60:70
        a(z1,z2)=8;
    end
end
for z1=93:99
    for z2=65
        a(z1,z2)=8;
    end
end
for z1=93:99 %Present box 3
    for z2=10:20
        a(z1,z2)=2;
    end
end
for z1=96
    for z2=10:20
        a(z1,z2)=10;
    end
end
for z1=93:99
    for z2=15
        a(z1,z2)=10;
    end
end
for z1=93:99 %Present box 4
    for z2=80:90
        a(z1,z2)=11;
    end
end
for z1=96
    for z2=80:90
        a(z1,z2)=12;
    end
end
for z1=93:99
    for z2=85
        a(z1,z2)=12;
    end
end
%Generating the star
a(18,50)=13;
a(19,49:51)=13;
a(20,49:51)=13;
a(21,48:52)=13;
a(22,48:52)=13;
a(23,47:53)=13;
a(24,42:58)=13;
a(25,43:57)=13;
a(26,44:56)=13;
a(27,45:55)=13;
a(28,46:54)=13;
a(29,46:54)=13;
a(30,46:54)=13;
a(31,45:49)=13;
a(31,51:55)=13;
a(32,45:48)=13;
a(32,52:55)=13;
a(33,44:47)=13;
a(33,53:56)=13;
a(34,44:46)=13;
a(34,54:56)=13;
a(35,43:44)=13;
a(35,56:57)=13;

disp('Merry Christmas!')
s=size(a);
x_len=s(1);
y_len=s(2);
n=1;
while n<10000   %If it runs through 10000 iterations of each box (100x100x1000) the code will stop running.
   n=n+1;
%     for z1=1:2
%     for z2=1:100
%         a(z1,z2)=1;
%     end
%    end
 for x=1:x_len
    for y=1:y_len
             x_new=x;
             y_new=y;
        if a(y,x)==1
            r=floor(3*rand(1,1));    %Snow falling upwards command removed
            if r==0
                %disp('Moving particle down')
                y_new=y_new+1;
            elseif r==1
                %disp('Moving particle left')
                x_new=x_new-1;
            elseif r==2
                %disp('Moving particle right')
                x_new=x_new+1;
            end
            if x_new<=0
                x_new=x;
            end
            if y_new<=0
                y_new=y;
            end
            if x_new>=101
                x_new=x;
            end
            if y_new>=101
                y_new=y;
            end
             if a(y_new,x_new)==5
           a(y,x)=0;
            end
            if a(y_new,x_new)==0
           a(y,x)=0;
           a(y_new,x_new)=1;
            end
        end
    end
 end
 q=floor(101*rand(1));   %Randomly generates snow particles on the top line
if q~=0
a(1,q)=1;
end
 figure(1)
imagesc(a)
pause(0.2)     %Optimum snow speed
end

disp('Merry Christmas!')