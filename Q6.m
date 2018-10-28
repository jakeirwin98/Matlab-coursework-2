%Jake Irwin eayjni@nottingham.ac.uk
%Q6

h=input('Enter height of the box\n'); 
w=input('Enter width of the box\n');
b=input('Enter breadth of the box\n');
s=input('Enter units used for measurement, e.g m,cm\n','s');    %'s' printed at end so it will accept string inputs
%sprintf('Your box has dimensions height==%f, width==%f, length==%f',h,w,b)
surface_area=box_area(h,w,b);  %uses the function box_area which is saved in the folder
volume=box_volume(h,w,b);    %uses the function box_volume which is saved in the folder
a=sprintf('The box has the surface area of %f %s*%s and volume of %f %s*%s*%s.',area,s,s,volume,s,s,s);
disp(a)
if h==5
    if w==30
        if b==30
    disp('It''s a pizza box!')   %Command will only be displayed if the 3 conditions are met
        end
    end
end