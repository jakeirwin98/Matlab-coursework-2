%Jake Irwin eayjni@nottingham.ac.uk
%Q7

%Program crashes when particle is at edge and a value comes up trying to
%make it move outside the parameters of the box.
%When particles move into the same place, the script counts it as only
%being one particle there and effectively annihilates one of them.
clear
a=zeros(100,100);
s=size(a);
x_len=s(1);
y_len=s(2);
n=1;
%for z1=40:60;
 %   for z2=40:60;
  %      a(z1,z2)=1;
   % end
%end
for z1=80:100
    for z2=1:100
        a(z1,z2)=1;     %for loop that generated the row of particles at the bottom
    end
end
for z3=1:100
    a(1,z3)=5; %for loop that will generate the 'open hole' for particles to evaporate at top
end
figure(1);
imagesc(a);

while n<1000   %If it runs through 1000 iterations the code will stop running.
    n=n+1
 for x=1:x_len
    for y=1:y_len
             x_new=x;
             y_new=y;
        if a(y,x)==1
            r=floor(5*rand(1,1));   %Generates a random number between 0-5 and rounds it down to the nearest whole integer
            if r==0                 %each different random number activates one of the nested for loops
                %disp('Moving particle down')
                y_new=y_new+1;
            elseif r==1
                %disp('Moving particle up')
                 y_new=y_new-1;
            elseif r==2
                %disp('Moving particle left')
                x_new=x_new-1;
            elseif r==3
                %disp('Moving particle right')
                x_new=x_new+1;
            elseif r==4
                %disp('Moving particle down')   
                %Particles now highly unlikely to ever reach top of container
                y_new=y_new+1;  %change to -1 to watch majority of particles 'evaporate'
            end
            if x_new<=0    %These 4 commands stop the particles moving outside the box
                x_new=x;
            end
            if y_new<=0
                y_new=y;
            end
            if x_new>x_len   %If box size changes, the particles won't cause the program to crash
                x_new=x;
            end
            if y_new>y_len
                y_new=y;
            end
             if a(y_new,x_new)==5    %Causes the particles to 'evaporate' once they reach the top
           a(y,x)=0;
            end
            if a(y_new,x_new)==0   %Stops particles destroying each other
           a(y,x)=0;
           a(y_new,x_new)=1;
            end
        end
        %t=sprintf('At the value x=%d, y=%d the value of a=%d', x, y, a(x,y));
        %disp(t)
    end
 end
 figure(2)
imagesc(a)
pause(0.05)     %Changed to 0.05 to speed up the simulation
end